#!/usr/bin/env bash

SSH_ENV=$HOME/.ssh/environment

function start_agent {
    echo "Initialising new SSH agent..."

    # run it with eval so that it sticks after terminal completion
    eval "/usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}"
    
    echo succeeded
    chmod 600 ${SSH_ENV}
    . ${SSH_ENV} > /dev/null

    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . ${SSH_ENV} > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

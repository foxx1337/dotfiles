#!/usr/bin/env bash

# This one makes sure that the Windows environment recognizez the ssh agent started before

if [[ `uname` == MINGW* ]]
then
	setx SSH_AUTH_SOCK $SSH_AUTH_SOCK > /dev/null
	setx SSH_AGENT_PID $SSH_AGENT_PID > /dev/null
fi

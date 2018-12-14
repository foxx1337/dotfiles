# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000000
export HISTFILESIZE=20000000

if [ -z $PROMPT_COMMAND ]
then
	export PROMPT_COMMAND="history -a"
else
	export PROMPT_COMMAND="$PROMPT_COMMAND;history -a"
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

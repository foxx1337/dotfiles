if [ -e $HOME/.bash-git-prompt/themes/foxX.bgptheme ]; then
	GIT_PROMPT_THEME=foxX
fi
if [ -e $HOME/.bash-git-prompt/gitprompt.sh ]; then
	source ~/.bash-git-prompt/gitprompt.sh
fi

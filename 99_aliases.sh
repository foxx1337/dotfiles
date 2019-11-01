# git aliases

git config --global alias.last 'log -5 --abbrev-commit --pretty=format:"%C(cyan)%h%Creset %C(yellow bold)%d%C(reset) %s %Cgreenby %an %cr%Creset" HEAD'
git config --global alias.twitter 'log --graph --abbrev-commit --pretty=format:"%C(cyan)%h%Creset %C(yellow bold)%d%C(reset) %s %Cgreenby %an %cr%Creset"'

# editor / pager aliases

alias less="less -q"

if [ $DESKTOP_SESSION == 'plasma' ]; then
	alias ssh="setsid -w ssh"
fi

# nicer pager for psql and git log

export PAGER=less
export LESS="-RMSx4 -FX"

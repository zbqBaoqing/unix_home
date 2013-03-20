# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:/opt/boxen/homebrew/bin

# git
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
source ~/.git-completion.bash

alias gocc="ssh root@localhost -p5001"
source ~/.git-completion.bash
source ~/.git-completion.bash
source ~/.git-completion.bash

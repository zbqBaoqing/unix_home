# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# git
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

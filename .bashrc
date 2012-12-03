# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin



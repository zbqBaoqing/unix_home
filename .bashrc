# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# go
export GOROOT=$HOME/.tools/go
export GOPATH=$HOME/work/gopath
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/boxen/homebrew/bin

# git
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
source ~/.git-completion.bash

alias gocc="ssh root@localhost -p5001"
source ~/.git-completion.bash
source ~/.git-completion.bash

#一些环境变量
export norns=$HOME/work/gopath/src/norns
export xpharos=$HOME/work/gopath/src/xpharos
export blog=$HOME/work/blog
export gotest=$HOME/work/gopath/src/gotest

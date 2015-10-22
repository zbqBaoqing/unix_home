# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/.myownrc
source ~/.git-completion.bash

export PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32;40m\]\u@\[\033[0;33;40m\]\t\[\033[00m\]\[\033[00m\]:\[\033[0;35;40m\]\w\[\033[00m\]\[\033[01;31;40m\]\$\[\033[00m\] '

alias vi='vim'
alias ff='find . | xargs grep -n --color '
alias ffh='find . -name \*.h -type f| xargs grep -n --color '
alias ffc='find . -name \*.c -o -name \*.cpp -type f| xargs grep -n --color '
alias grep='grep --color '
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'

if [ `uname` == 'Darwin' ]
then
    alias ls='ls -GF'
    alias la='ls -GFa'
    alias ll='ls -lGF'
    PATH=$PATH:/usr/local/homebrew/bin
    chsh -s /bin/zsh
else
    alias ls='ls -F --color '
    alias la='ls -Fa --color '
    alias ll='ls -Fl --color '
fi

source ~/.git-completion.bash
source ~/.git-completion.bash

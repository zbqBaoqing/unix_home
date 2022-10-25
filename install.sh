#!/bin/sh
#git clone git@github.com:laiwei/unix_home.git ~/.laiwei_unix_home


install_file()
{
	src=`pwd`"/"$1
	des="$HOME/$1"
	echo "
	src $src
	des $des"
	if [ -f $des -o -d $des ]; then
		mv -f $des $des".backup"
	fi
	ln -s $src $des
}

install_file .screenrc
install_file .vimrc
install_file .myownrc
install_file .ssh/config
install_file .zshrc
install_file .vim
install_file .bash_profile
install_file .tmux.conf
install_file .bashrc
install_file .dircolors
install_file .git-completion.bash && echo "source ~/.git-completion.bash" >> ~/.bashrc
install_file .fonts
install_file .gitignore
install_file .gitconfig
install_file .dircolors
install_file .bin

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
pip install powerline-status


hash yum 2>/dev/null && sudo yum install -y ctags-etags
hash apt-get 2>/dev/null && sudo apt-get install -y exuberant-ctags
hash brew 2>/dev/null && brew install ctags 


if [ -d "$GOROOT" ]; then
    mkdir -p $HOME/.vim/ftdetect
    mkdir -p $HOME/.vim/syntax
    mkdir -p $HOME/.vim/autoload/go
    ln -s $GOROOT/misc/vim/ftdetect/gofiletype.vim $HOME/.vim/ftdetect/
    ln -s $GOROOT/misc/vim/syntax/go.vim $HOME/.vim/syntax
    ln -s $GOROOT/misc/vim/autoload/go/complete.vim $HOME/.vim/autoload/go
    echo "syntax on" >> $HOME/.vimrc
fi

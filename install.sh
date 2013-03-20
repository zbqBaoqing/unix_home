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
install_file .vim
install_file .bash_profile
install_file .bashrc
install_file .dircolors
install_file .git-completion.bash && echo "source ~/.git-completion.bash" >> ~/.bashrc
install_file .fonts
install_file .gitignore
install_file .gitconfig
install_file .dircolors

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle







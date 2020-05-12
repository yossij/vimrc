#!/bin/bash

# Determine OS

# yum
if [[ `command -v yum | grep -o yum` == 'yum' ]]; then
	# install git
	sudo yum install git -y

	# install nodsjs for coc
	curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
	sudo yum install -y nodejs

# apt
elif [[ `command -v apt | grep -o apt` == 'apt' ]]; then
	# update apt
	sudo apt update

	# install git
	sudo apt install git -y

	# install git 
	# and nodsjs, npm for coc
	sudo apt install git nodejs npm -y

else
    echo "Unsupported OS"
    exit 1
fi

# get vim-plug file
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# get vim configuration files from repo
git clone https://github.com/yossij/vimrc.git

# save the vim files in ~/.vim/ dir
shopt -s dotglob
mv -f vimrc/* ~/.vim/
rmdir vimrc

# source the vim files in .vimrc
cat <<EOT >> ~/.vimrc
source ~/.vim/sets.vim
source ~/.vim/vim-plug.vim
source ~/.vim/colorscheme.vim
source ~/.vim/coc.vim
EOT

# install plugins from vim and quit
vim +PlugInstall +qall

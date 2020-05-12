#!/bin/bash

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

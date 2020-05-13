#!/bin/bash

# Determine OS

# yum
if [[ `command -v yum | grep -o yum` == 'yum' ]]; then
	# install git
	sudo yum install git -y

	# install nodsjs for coc
	curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
	sudo yum install -y nodejs

# mac
elif [[ `command -v brew | grep -o brew` == 'brew' ]]; then
  # install git
  # and nodsjs (for coc)
	brew install -y git node

# apt
elif [[ `command -v apt | grep -o apt` == 'apt' ]]; then
	# update apt
	sudo apt update

	# install git
	sudo apt install git -y

	# install git 
  # and nodsjs, npm (for coc)
	sudo apt install git nodejs npm -y

else
    echo "Unsupported OS"
    exit 1
fi

curl -sL https://github.com/yossij/vimrc/raw/master/install_script/install.sh | bash -


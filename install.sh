#!/bin/bash

if [ "$(uname -s)" == "Linux" ]; then
  echo "Installing dependencies for Linux"

  sudo apt-get update

  # git
  sudo apt-get install git

  # vim
  sudo apt-get install vim

  # install zsh and set it as the default shell
  sudo apt-get install zsh
  chsh -s $(which zsh)


elif [ "$(uname -s)" == "Darwin" ]; then
  echo "Installing dependencies for Mac OS"
fi

# git that shit
cd ~
git clone https://github.com/snkinard/dotfiles.git

cd dotfiles
~/dotfiles/boostrap.sh



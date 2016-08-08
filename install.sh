#!/bin/bash

if [ "$(uname -s)" == "Linux" ]; then
  echo "Installing dependencies for Linux"

  sudo apt-get update

  # linux-brew dependencies
  sudo apt-get install make
  sudo apt-get install gawk
  sudo apt-get install ruby
  sudo apt-get install git

  # install linuxbrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

  # install other dependencies with brew
  brew install vim
  brew install zsh

  # make zsh the default shell
  chsh -s $(which zsh)


elif [ "$(uname -s)" == "Darwin" ]; then
  echo "Installing dependencies for Mac OS"
fi

# git that shit
cd ~
git clone https://github.com/snkinard/dotfiles.git

cd dotfiles
~/dotfiles/bootstrap.sh



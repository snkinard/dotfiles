#!/bin/bash

if [ "$(uname -s)" == "Linux" ]; then
  echo "Installing dependencies for Linux"

  sudo apt-get update

  sudo apt-get install git
  sudo apt-get install vim
  sudo apt-get install zsh
elif [ "$(uname -s)" == "Darwin" ]; then
  echo "Installing dependencies for Mac OS"
  
  # make sure homebrew is installed
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
  brew install git
  brew install vim
  brew install zsh
fi

# make zsh the default shell
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

# git that shit
cd ~
git clone https://github.com/snkinard/dotfiles.git

cd dotfiles
~/dotfiles/bootstrap.sh


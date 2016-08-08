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

  export PATH="$HOME/.linuxbrew/bin:$PATH"
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

elif [ "$(uname -s)" == "Darwin" ]; then
  echo "Installing dependencies for Mac OS"
  
  # make sure homebrew is installed
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 

fi

brew install git
brew install vim
brew install zsh

# make zsh the default shell
chsh -s $(which zsh)

# git that shit
cd ~
git clone https://github.com/snkinard/dotfiles.git

cd dotfiles
~/dotfiles/bootstrap.sh


#!/bin/bash

platform=$(uname)
if [ $platform == "Darwin" ]; then
  # Makes sure we're on the latest version.
  brew update
  brew upgrade

  # Core tools.
  brew install zsh
  brew install git
  brew install git-extras
  brew install coreutils
  brew install cmake
  brew install gcc

  # Dev Tools
  brew install vim
  brew install jq
  brew install clog

  # Languages
  #brew install python3
  #brew install python

  # other stuff
  brew install tree
  brew install dfu-util

  # cask
  brew tap caskroom/cask
  brew cask install intellij-idea

  # remove outdated versions from cellar
  brew cleanup
fi

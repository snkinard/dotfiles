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

  # other stuff
  brew install tree
  brew install dfu-util

  # cask
  brew tap homebrew/cask-cask
  brew cask install intellij-idea
  brew cask install iterm2
  brew cask install ivpn
  brew cask install lastpass
  brew cask install malwarebytes
  brew cask install slack

  # remove outdated versions from cellar
  brew cleanup
fi

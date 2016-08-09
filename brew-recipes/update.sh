#!/bin/bash

# Makes sure we're on the latest version.
brew update
brew upgrade

# Core tools.
brew install zsh
brew install git
brew install git-extras
brew install coreutils

# Dev Tools
brew install vim
brew install macvim
brew install jq

# Languages
brew install python3
brew install python

# other stuff
brew install shpotify
brew install task

# cask
brew tap caskroom/cask
brew cask install intellij-idea
brew cask install google-chrome
brew cask install slack
brew cask install spotify
brew cask install flux
brew cask install dropbox
brew cask install virtualbox
brew cask install iterm2

# remove outdated versions from cellar
brew cleanup
brew linkapps

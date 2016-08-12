#!/bin/bash

platform=$(uname)
if [ $platform == "Linux" ]; then
  sudo apt-get update

  # core tools
  sudo apt-get install curl
  sudo apt-get install git
  sudo apt-get install zsh
  sudo apt-get install vim
fi


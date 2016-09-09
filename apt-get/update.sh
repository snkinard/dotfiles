#!/bin/bash

platform=$(uname)
if [ $platform == "Linux" ]; then
  sudo apt-get update

  # core tools
  sudo apt-get install curl
  sudo apt-get install git
  sudo apt-get install zsh
  sudo apt-get install vim

  sudo apt-get install task
  sudo apt-get install make
  sudo apt-get install cmake
  sudo apt-get install gcc

  sudo apt-get install clog
fi


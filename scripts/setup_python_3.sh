#!/bin/bash

# install python 3
if [ "$(uname -s)" = "Linux" ]; then
  sudo apt-get install python3
  sudo apt-get install pip
elif [ "$(uname -s)" = "Darwin" ]; then
  brew install python3
fi

pip install virtualenv
pip install virtualenvwrapper

mkdir ~/.virtualenvs

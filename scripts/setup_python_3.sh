#!/bin/bash

# install python 3
if [ "$(uname -s)" = "Linux" ]; then
  sudo apt-get install python3
  sudo apt-get install python-pip
  sudo pip install --upgrade pip
  sudo pip install --upgrade virtualenv
  sudo pip install --upgrade virtualenvwrapper
elif [ "$(uname -s)" = "Darwin" ]; then
  brew install python3
  pip install --upgrade virtualenv
  pip install --upgrade virtualenvwrapper
fi

mkdir ~/.virtualenvs

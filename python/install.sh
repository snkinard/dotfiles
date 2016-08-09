#!/bin/bash

# install python 3
if [ "$(uname -s)" = "Linux" ]; then
  # currently busted

  #sudo add-apt-repository ppa:fkrull/deadsnakes
  #sudo apt-get update
  #sudo apt-get install python3.5
  #sudo apt-get install python-pip
  #sudo add-apt-repository --remove ppa:fkrull/deadsnakes

  #sudo pip install --upgrade pip
  #sudo pip install --upgrade virtualenv
  #sudo pip install --upgrade virtualenvwrapper
elif [ "$(uname -s)" = "Darwin" ]; then
  pip install --upgrade virtualenv
  pip install --upgrade virtualenvwrapper
  mkdir ~/.virtualenvs
fi


#!/bin/bash

# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
platform=$(uname)

if [ $platform == "Linux" ]; then
  $script_dir/apt-get/update.sh
elif [ $platform == "Darwin" ]; then
  $script_dir/brew-recipes/install.sh
fi

# make zsh the default shell
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

# $script_dir/update.sh


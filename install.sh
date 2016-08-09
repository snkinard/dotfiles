#!/bin/bash

# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
platform=$(uname)

if [ $platform == "Linux" ]; then
  $script_dir/apt-get/update.sh
elif [ $platform == "Darwin" ]; then
  $script_dir/brew-recipes/install.sh
fi

$script_dir/git/install.sh
$script_dir/zsh/install.sh
$script_dir/vim/install.sh
$script_dir/python/install.sh

# don't run the update script since each install script calls update

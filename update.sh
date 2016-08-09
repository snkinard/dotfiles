#!/bin/bash
# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
platform=$(uname)

git pull origin master;
git submodule update --init zsh/antigen
git submodule update --init vim/vim.symlink/bundle/Vundle.vim

if [ $platform == "Linux" ]; then
  $script_dir/apt-get/update.sh
elif [ $platform == "Darwin" ]; then
  $script_dir/brew-recipes/update.sh
fi

$script_dir/git/update.sh
$script_dir/zsh/update.sh
$script_dir/vim/update.sh

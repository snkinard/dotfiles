#!/bin/bash

# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

git pull origin master;
git submodule update --init zsh/antigen
git submodule update --init vim/vim.symlink/bundle/Vundle.vim

$script_dir/apt-get/update.sh
$script_dir/brew/update.sh
$script_dir/git/update.sh
$script_dir/zsh/update.sh
$script_dir/vim/update.sh
$script_dir/task/update.sh

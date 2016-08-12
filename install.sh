#!/bin/bash

# pull in submodules
git submodule update --init zsh/antigen
git submodule update --init vim/vim.symlink/bundle/Vundle.vim

# get the dir of the current script
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$script_dir/apt-get/update.sh
$script_dir/brew/install.sh
$script_dir/git/update.sh
$script_dir/zsh/install.sh
$script_dir/vim/update.sh
$script_dir/python/install.sh

# don't run the update script since each install script calls update

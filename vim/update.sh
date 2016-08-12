#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
platform=$(uname)

if [[ ! -a ~/.vimrc ]]
then
  ln -s $script_dir/vimrc.symlink ~/.vimrc
fi

if [[ ! -a ~/.vim ]]
then
  ln -s $script_dir/vim.symlink ~/.vim
fi

# Idea is only used in OSX
if [[ $platform == *Darwin* ]]
then
  if [[ ! -a ~/.ideavimrc ]] 
  then 
    ln -s $script_dir/ideavimrc.symlink ~/.ideavimrc 
  fi
fi

vim +PluginInstall +qall

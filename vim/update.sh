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

# Idea and Macvim (guivim) only used in OSX
if [[ $platform == *Darwin* ]]
then
  if [[ ! -a ~/.ideavimrc ]] 
  then 
    ln -s $script_dir/ideavimrc.symlink ~/.ideavimrc 
  fi

  if [[ ! -a ~/.gvimrc ]]
  then
    ln -s $script_dir/gvimrc.symlink ~/.gvimrc
  fi
fi

vim +PluginInstall +qall

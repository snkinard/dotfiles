#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.vimrc ]]
then
  ln -s $script_dir/vim/vimrc.symlink ~/.vimrc
fi

if [[ ! -a ~/.vim ]]
then
  ln -s $script_dir/vim/vim.symlink ~/.vim
fi

vim +PluginInstall +qall

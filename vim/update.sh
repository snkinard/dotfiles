#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.vimrc ]]
then
  ln -s $script_dir/vimrc.symlink ~/.vimrc
fi

if [[ ! -a ~/.vim ]]
then
  ln -s $script_dir/vim.symlink ~/.vim
fi

cd ..
git submodule update --init vim/vim.symlink/bundle/Vundle.vim

vim +PluginInstall +qall

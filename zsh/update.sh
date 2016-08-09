#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.zshrc ]]
then
  ln -s $script_dir/zshrc.symlink ~/.zshrc
fi

cd ..
git submodule update --init zsh/antigen

source ~/.zshrc

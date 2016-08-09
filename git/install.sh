#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.gitignore_global ]]
then
  ln -s $script_dir/git/gitignore_global.symlink ~/.gitignore_global
fi

$script_dir/update.sh

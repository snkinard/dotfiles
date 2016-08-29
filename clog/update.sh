#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.clogrc ]]
then
  ln -s $script_dir/clogrc.symlink ~/.clogrc
fi


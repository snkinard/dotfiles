#!/bin/bash

platform=$(uname)
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ $platform == "Darwin" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
fi

$script_dir/update.sh

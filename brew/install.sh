#!/bin/bash

platform=$(uname)
if [ $platform == "Darwin" ]; then
  script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
  $script_dir/update.sh
fi

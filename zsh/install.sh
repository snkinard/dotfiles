#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# make zsh the default shell
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

$script_dir/update.sh

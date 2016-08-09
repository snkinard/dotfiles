#!/bin/bash

script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -a ~/.gitignore_global ]]
then
  ln -s $script_dir/gitignore_global.symlink ~/.gitignore_global
fi

current_name=$(git config --global --get user.name)

# if current_name is empty, then add a name
if [[ -z "$current_name" ]]
then
    git config --global user.name "Sam Kinard"
fi

current_email=$(git config --global --get user.email)

# if current_email is empty, then add an email
if [[ -z "$current_email" ]]
then
    git config --global user.email "snkinard@gmail.com"
fi

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br "branch -vv"
git config --global alias.d difftool
git config --global alias.h help
git config --global alias.sub submodule
git config --global alias.unstage "reset HEAD"
git config --global alias.unstash "stash pop"
git config --global alias.dst "diff --staged"
git config --global alias.dc "!git diff | cdiff -s"
git config --global alias.dcs "!git diff --staged | cdiff -s"
git config --global alias.cp "cherry-pick"
git config --global alias.rb "rebase"

git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

git config --global color.ui true

# Forces the use of SSH instead of HTTPS for any URLs that point to github.
# This means that if a repo uses "https://github/..." for "origin", we will
# automatically use SSH. No more password prompts!
# git config --global url.ssh://git@github.com/.insteadOf https://github.com/

# When editing the commit message, git will now always include a diff of the
# changes below the message area (the diff does NOT become part of the commit
# message, it's only there for information).
git config --global commit.verbose true

# Prettier diffs
git config --global diff.compactionHeuristic true


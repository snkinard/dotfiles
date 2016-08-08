#!/usr/bin/env bash

git pull origin master;
git submodule update --init antigen
git submodule update --init .vim/bundle/Vundle.vim

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude ".gitmodules" \
		--exclude "antigen" \
		-avh --no-perms . ~;

  vim +PluginInstall +qall
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
      doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	doIt;
	fi;
fi;
unset doIt;



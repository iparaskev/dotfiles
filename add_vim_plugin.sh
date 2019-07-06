#!/bin/bash

# Add check for next installiation

name=$2
repo=$1

a="\nPLUGIN=\$PLUGIN_FOLDER/$name\n"
b="if [[ ! -d \$PLUGIN ]]\nthen\n\tgit clone $repo \$PLUGIN\nfi"

echo -e $a$b >> install/install_vim.sh

# Install it
PLUGIN_FOLDER=vim/bundle
PLUGIN=$PLUGIN_FOLDER/$name
if [[ ! -d $PLUGIN ]]
then
	git clone $repo $PLUGIN
fi

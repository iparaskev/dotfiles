#!/bin/bash

TARGET="$HOME/.gitconfig"
BAK="$HOME/.gitconfig.bak"

# Back up the deafault folder
if [[ -f $TARGET ]]
then
	mv $TARGET $BAK
fi

# Check if the file already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/gitconfig $TARGET
fi

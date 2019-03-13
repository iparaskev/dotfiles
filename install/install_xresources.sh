#!/bin/bash

TARGET="$HOME/.Xresources"
BAK="$HOME/.Xresources.bak"

# Back up the deafault folder
if [[ -f $TARGET ]]
then
	mv $TARGET $BAK
fi

# Check if the file already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/Xresources $TARGET
fi

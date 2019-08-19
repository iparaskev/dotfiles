#!/bin/bash

FILE="tmux.conf"
TARGET="$HOME/.tmux.conf"
BAK="$HOME/.tmux.conf.bak"

# Back up the deafault folder
if [[ -f $TARGET ]]
then
	mv $TARGET $BAK
fi

# Check if the file already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/$FILE $TARGET
fi

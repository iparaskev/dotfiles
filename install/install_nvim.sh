#!/bin/bash

TARGET="$HOME/.config/nvim"
BAK="$HOME/.config_bak"

# Back up the default folder
if [[ -d $TARGET ]]
then
	mv $TARGET $BAK
fi

# Check if the folder already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/nvim $TARGET
fi

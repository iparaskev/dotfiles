#!/bin/bash

TARGET="$HOME/.config/base16-shell"
BAK="$HOME/.config_bak/"

# Back up the deafault folder
if [[ -d $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

# Check if the folder already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/base16-shell $TARGET
fi

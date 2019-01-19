#!/bin/bash

TARGET="$HOME/.config/ranger"
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
	ln -s `pwd`/ranger $TARGET
fi

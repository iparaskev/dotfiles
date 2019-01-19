#!/bin/bash

TARGET="$HOME/.config/i3"
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
	ln -s `pwd`/i3 $TARGET
fi

# Prequisteres
if [[ ! -d $HOME/Pictures/screenshots ]]
then
	mkdir -p $HOME/Pictures/screenshots
fi

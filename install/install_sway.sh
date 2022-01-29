#!/bin/bash

TARGET="$HOME/.config/sway"
BAK="$HOME/.config_bak/"

if [[ ! -d $HOME/.config ]]
then
	mkdir -p $HOME/.config
fi

# Back up the deafault folder
if [[ -d $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

# Check if the folder already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/sway $TARGET
fi

# Prequisteres
if [[ ! -d $HOME/Documents/Screenshots ]]
then
	mkdir -p $HOME/Pictures/screenshots
fi

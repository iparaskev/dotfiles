#!/bin/bash

TARGET="$HOME/.config/i3"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mv $TARGET $BAK
fi

# Prequisteres
if [[ ! -e $HOME/Pictures/screenshots ]]
then
	mkdir -p $HOME/Pictures/screenshots
fi

ln -s `pwd`/i3 $TARGET

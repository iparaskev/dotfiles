#!/bin/bash

TARGET="$HOME/.config/i3"
BAK="$HOME/.config_bak/i3_bak"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	cp -rf $TARGET/* $BAK
	rm -rf $TARGET
fi

# Prequisteres
if [[ ! -e $HOME/Pictures/screenshots ]]
then
	mkdir -p $HOME/Pictures/screenshots
fi

ln -s `pwd`/i3 $TARGET

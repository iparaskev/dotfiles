#!/bin/bash

TARGET="$HOME/.config/polybar"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/polybar $TARGET

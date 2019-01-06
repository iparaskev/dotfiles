#!/bin/bash

TARGET="$HOME/.config/polybar"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mv $TARGET $BAK
fi

ln -s `pwd`/polybar $TARGET

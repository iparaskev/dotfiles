#!/bin/bash

TARGET="$HOME/.config/ranger"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/ranger $TARGET

#!/bin/bash

TARGET="$HOME/.config/zathura"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/zathura $TARGET

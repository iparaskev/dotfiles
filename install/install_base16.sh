#!/bin/bash

TARGET="$HOME/.config/base16-shell"
BAK="$HOME/.config_bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/base16-shell $TARGET

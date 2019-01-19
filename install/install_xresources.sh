#!/bin/bash

TARGET="$HOME/.Xresources"
BAK="$HOME/.Xresources.bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/Xresources $TARGET

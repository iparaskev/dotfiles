#!/bin/bash

TARGET="$HOME/.gitconfig"
BAK="$HOME/.gitconfig.bak/"

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

ln -s `pwd`/gitconfig $TARGET

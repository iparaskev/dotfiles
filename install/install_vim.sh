#!/bin/bash

TARGET=$HOME/.vim
BAK=$HOME/.vim_bak

if [[ -e $TARGET ]]
then
	mv $TARGET $BAK
fi

ln -s `pwd`/vim $TARGET

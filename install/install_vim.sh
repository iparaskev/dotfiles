#!/bin/bash

if [[ -e $HOME/.vim ]]
then
	mkdir -p $HOME/.vim_bak
	cp -rf $HOME/.vim/* $HOME/.vim_bak/	
	rm -rf $HOME/.vim
fi

ln -s `pwd`/vim ~/.vim

#!/bin/bash

TARGET=$HOME/.vim
BAK=$HOME/.vim_bak

# Back up the deafault folder
if [[ -d $TARGET ]]
then
	mv $TARGET $BAK
fi

# Check if the folder already exists
if [[ ! -e $TARGET ]]
then
	ln -s `pwd`/vim $TARGET
fi

# Vim plugins
PLUGIN_FOLDER=vim/bundle

mkdir -p $PLUGIN_FOLDER

PLUGIN=$PLUGIN_FOLDER/Vundle.vim
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/VundleVim/Vundle.vim.git $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/auto-pairs
if [[ ! -d $PLUGIN ]]
then
	git clone git://github.com/jiangmiao/auto-pairs.git $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/syntastic
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/vim-syntastic/syntastic $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/vim-buftabline
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/ap/vim-buftabline $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/vim-pydocstring
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/heavenshell/pydocstring $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/vim-multiple-cursors
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/terryma/vim-multiple-cursors $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/vimtex
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/lervag/vimtex $PLUGIN
fi

PLUGIN=$PLUGIN_FOLDER/vim-vinegar
if [[ ! -d $PLUGIN ]]
then
	git clone https://github.com/tpope/vim-vinegar $PLUGIN
fi

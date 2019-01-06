#!/bin/bash

TARGET=$HOME/.vim
BAK=$HOME/.vim_bak

if [[ -e $TARGET ]]
then
	mkdir -p $BAK
	mv $TARGET $BAK
fi

mkdir -p vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim
git clone git://github.com/jiangmiao/auto-pairs.git vim/bundle/auto-pairs
git clone https://github.com/scrooloose/nerdtree.git vim/bundle/nerdtree
git clone https://github.com/vim-syntastic/syntastic vim/bundle/syntastic
git clone https://github.com/ap/vim-buftabline vim/bundle/vim-buftabline

ln -s `pwd`/vim $TARGET

#!/bin/sh

if [[ -f ~/.zshrc ]]
then
	mv ~/.zshrc ~/.zshrc.bak
fi

if [[ -f ~/.zsh_aliases ]]
then
	mv ~/.zsh_aliases ~/.zsh_aliases.bak
fi

if [[ -f ~/.zsh_functions ]]
then
	mv ~/.zsh_functions ~/.zsh_functions.bak
fi

TARGET=zshrc
if [[ ! -e $HOME/.$TARGET ]]
then
	ln -s `pwd`/zsh/$TARGET ~/.$TARGET
fi

TARGET=zsh_aliases
if [[ ! -e $HOME/.$TARGET ]]
then
	ln -s `pwd`/zsh/$TARGET ~/.$TARGET
fi

TARGET=zsh_functions
if [[ ! -e $HOME/.$TARGET ]]
then
	ln -s `pwd`/zsh/$TARGET ~/.$TARGET
fi

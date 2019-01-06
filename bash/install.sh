#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc ~/.bashrc.bak
fi

if [[ -f ~/.bash_aliases ]]
then
	mv ~/.bash_aliases ~/.bash_aliases.bak
fi

if [[ -f ~/.bash_functions ]]
then
	mv ~/.bash_functions ~/.bash_functions.bak
fi

if [[ -f ~/.bash_completions ]]
then
	mv ~/.bash_completions ~/.bash_completions.bak
fi

ln -s `pwd`/bashrc ~/.bashrc
ln -s `pwd`/bash_aliases ~/.bash_aliases
ln -s `pwd`/bash_functions ~/.bash_functions
ln -s `pwd`/bash_completions ~/.bash_completions

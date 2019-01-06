#!/bin/bash

if [[ -f ~/.bashrc ]]
then
	mv ~/.bashrc ~/.bashrc.bak
fi

if [[ -f ~/.bash_profile ]]
then
	mv ~/.bash_profile ~/.bash_profile.bak
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

# Prerequisites
if [[ ! -f ~/.git-completion.bash ]]
then
	wget https://github.com/git/git/raw/master/contrib/completion/git-completion.bash\
	     -O ~/.git-completion.bash
fi

ln -s `pwd`/bash/bashrc ~/.bashrc
ln -s `pwd`/bash/bash_profile ~/.bash_profile
ln -s `pwd`/bash/bash_aliases ~/.bash_aliases
ln -s `pwd`/bash/bash_functions ~/.bash_functions
ln -s `pwd`/bash/bash_completions ~/.bash_completions
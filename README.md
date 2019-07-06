# My personal dotfiles configuration

## Prerequisite per folder

### base16-shell

It is a clone from this [chriskempson/base16-shell](https://github.com/chriskempson/base16-shell)
and the base16-current.sh is the selection of scripts. Then this file is sourced in the
shell. Changing this file changes terminal's colors.

### bash

It is based on:
* base16-shell

Also it has a function work on which activates a python virtual environment. 
The environments are in the ~/virtualenvs folder. In order to work with another
setup, it might need to the path to the folder to be changed.

### i3

It is based on:
* polybar
* i3lock
* ranger
* zathura
* feh
* xrandr
* alsa
* scrot
* pulseaudio

### Vim

In order to update the installiation file of vim, the add_vim_script is used. Running
this script with the repo name and the installed name folder it clones it to 
bundle folder and updates the installiation file with the new entry.

## Installiation

After cloning the repo run
```
make install
```
to install every configuration.
In order to install some of them run
```
make install folder1 folder2 ...
```

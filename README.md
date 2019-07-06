# My personal dotfiles configuration

## Prerequisite per folder

### base16-shell

It is a clone from this [chriskempson/base16-shell](https://github.com/chriskempson/base16-shell)
and the base16-current.sh is the selection of scripts. Then this file is sourced
shell. Changing this filem changes terminal's colors.

### bash

It is based on:
* base16-shell
Also it has a function work on which activates a python virtual environment. 
The environments are in the ~/virtualenvs folder. In order to work with your
setup, you might need to change the path to the folder.

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

## Installiation

You clone the repo and then you can use 
```
make install
```
to install every configuration.
If you want to install some of them you can use
```
make install folder1 folder2 ...
```

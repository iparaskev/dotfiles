#!/bin/zsh
TMPBG=/tmp/screen.png
LOCK=$HOME/Pictures/use_it.png
RES=1366x768

rm $TMPBG
ffmpeg -i $LOCK -vf scale=$RES $TMPBG
i3lock -i $TMPBG -t

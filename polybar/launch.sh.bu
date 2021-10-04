#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have benn shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar --reload main &
done

echo "Bars launched"

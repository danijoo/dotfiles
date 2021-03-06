#!/bin/bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config workstation &
polybar -c ~/.config/polybar/config workstation2 & 
polybar -c ~/.config/polybar/config laptop &
polybar -c ~/.config/polybar/config laptop_station &

echo "Bars launched..."

#!/bin/sh
picom &
wal -R
#nitrogen --restore &
xrandr --output DP-1 --mode 2560x1440_144.00

while true; do
    xsetroot -name " $(date +%T) "
    sleep 10s
done &
exec dwm

#!/bin/sh

# compositor 
killall picom
picom &

# polybar
~/.config/polybar/launch.sh &

# background 
nitrogen --restore &

# sxhkd
sxhkd -c $HOME/.config/i3/sxhkd/sxhkdrc &

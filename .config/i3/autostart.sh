#!/bin/sh

# compositor 
killall picom
picom &

# polybar
~/.config/polybar/launch.sh &

# background 
nitrogen --restore &

# fibonacci layout in i3
# checkout https://github.com/nwg-piotr/autotiling
killall autotiling
autotiling &

# sxhkd
killall sxhkd
sxhkd -c $HOME/.config/i3/sxhkd/sxhkdrc &

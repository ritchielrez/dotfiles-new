#!/bin/sh

# compositor 
killall -q picom
picom &

# polybar
killall -q polybar
~/.config/polybar/launch.sh &

# background 
nitrogen --restore &

# fibonacci layout in i3
# checkout https://github.com/nwg-piotr/autotiling
killall -q autotiling
autotiling &

# sxhkd
killall -q sxhkd
sxhkd -c $HOME/.config/i3/sxhkd/sxhkdrc &

# xfce power manager
killall -q xfce4-power-manager
xfce4-power-manager &

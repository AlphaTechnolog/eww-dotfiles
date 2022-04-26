#!/bin/bash

# This is a script to autostart some applications like picom
# or merge some Xresources or change the wallpaper, or in This
# case is necesary to start sxhkd

#  NOTE: This is an example file, you can change it with your stuff

xsetroot -cursor_name left_ptr
picom -b --experimental-backends
xrdb -merge $HOME/.Xresources

# notification manager
dunst &

# Wallpaper
feh --bg-scale $HOME/.config/wallpapers/misc/nature-13.jpg

# don't remove this please
pkill bspc
pkill eww
sxhkd &

# spawn bar
eww -c ~/.config/eww daemon
eww -c ~/.config/eww open bar

# redshift
redshift -x
redshift -O 7500

# notifmonitord
pkill notifmonitord
sudo rm -rf /opt/notifications-monitor/daemon.lck
notifmonitod 2>&1 > /dev/null &

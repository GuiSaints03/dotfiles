#!/bin/sh
 
systemctl --user import-environment DISPLAY
 
dunst &
sxhkd &
picom --experimental-backends &
udiskie &
mpd &
exec bspwm
#!/bin/sh

## Set mouse DPI to 1600
/home/brad/scripts/set_mouse_dpi.sh &
exec picom &
exec nitrogen --restore &
exec dunst &
slstatus &
numlockx &
sxhkd &
exec dwm

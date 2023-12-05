#!/bin/bash

## Check if there are any players available
players=$(playerctl -l 2>/dev/null)

## Check to see that there are currently active players first
if [ -n "$players" ]; then


## Get the status of current media playing from playerctl (and suppress any error messsages)
## Also get the position because some players like Spotify will report "Paused" even if something is playing
## This is usually an issue with streaming media
	status=$(playerctl status 2>/dev/null)
	position=$(playerctl position 2>/dev/null)

	if [ "$status" = "Playing" ] || [ "$position" != "0.000000" ]; then
    	artist=$(playerctl metadata artist)
    	title=$(playerctl metadata title)
    	echo " $artist - $title"
	else
    	echo ""
	fi
else
	echo ""
fi

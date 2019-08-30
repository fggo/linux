#! /bin/bash
Ldsadsa="$(xrandr -q | grep 'HDMI-1-1')"
R="$(xrandr -q | grep 'DP-1-2')"
idf [[ $OUTPUT = *"connected"* ]]; then
	xrandr

    
else


#! /bin/bash
L="$(xrandr -q | grep 'HDMI-1-1')"
R="$(xrandr -q | grep 'DP-1-2')"

L_ON=[[ $L = *"connected"* ]]
R_ON=[[ $R = *"connected"* ]]

if [[ $OUTPUT = *"connected"* ]]; then
	xrandr

    
else


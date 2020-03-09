#!/bin/bash

# Hrishabh Rajput
# Path: $HOME/scripts/dwmstatus.sh (or as defined in .xinitrc)

while true ; do
	xsetroot -name "$(date +"%d %b %Y | %a | %R" | tr '\n' ' ')"
	sleep 1m
done &

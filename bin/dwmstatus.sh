#!/bin/bash

while true ; do
    date_=$(date +"%d %b'%y | %a | %R" | tr '\n' ' ')

    root_=" $(df -h --output=used / | grep -oe '[0-9\.]*[KMG]') [$(df --output=pcent / | grep -oe '[0-9]*[0-9]%')]"

    if [[ $(amixer get Master,0 | grep -c 'off') -gt 0 ]]; then
        vol_=" Mute"
    else
        vol_=" $(amixer get Master,0 | grep -oe '[0-9]*%')"
    fi

    batt_=" $(/home/hrishabh/scripts/batt_stat)"

	xsetroot -name "${batt_} | ${vol_} | ${root_} || ${date_}"
	sleep 1m
done &

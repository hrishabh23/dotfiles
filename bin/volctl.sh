#!/bin/sh
# Created by Hrishabh Rajput
# 14 Apr 2020, 12:18
# Arch Linux

volup () {
    amixer -q sset Master,0 5%+ unmute
    notify-send -t 1500 "" "Vol ++ $(amixer get Master,0 | grep -oe '[0-9]*%' -m 1)"
}

voldn () {
    amixer -q sset Master,0 5%- unmute
    notify-send -t 1500 "" "Vol -- $(amixer get Master,0 | grep -oe '[0-9]*%' -m 1)"
}

volmute () {
    amixer -q sset Master,0 toggle
    if [[ $(amixer get Master,0 | grep -c 'off') -gt 0 ]]; then
     notify-send -t 1500 "" "Muted"
    else
        notify-send -t 1500 "" "Unmuted"
    fi
}

case "${1}" in
    inc) volup ;;
    dec) voldn ;;
    mute) volmute ;;
esac

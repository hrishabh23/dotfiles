#!/bin/bash
# Created by Hrishabh Rajput
# 14 Apr 2020, 12:54
# Arch Linux

brightup () {
    /usr/bin/xbacklight -inc 2%
    notify-send -t 1500 "" " Brightness ++ [$(/usr/bin/xbacklight -get | sed 's/\..*$//g')]"
}

brightdn () {
    /usr/bin/xbacklight -dec 2%
    notify-send -t 1500 "" "Brightness -- [$(/usr/bin/xbacklight -get | sed 's/\..*$//g')]"
}

case "${1}" in
    inc) brightup ;;
    dec) brightdn ;;
esac

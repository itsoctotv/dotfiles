#!/bin/sh
if pgrep -x rofi; then
    killall rofi
else
    rofi -normal-window -show-icons -show drun
fi

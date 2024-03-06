#!/bin/bash
#
# edp 1
xrandr --output eDP-1 --primary --mode 1920x1200 --pos 760x1440 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --mode 3440x1440 --pos 0x0 --rotate normal --output DP-4 --off
if [ $? -eq 0 ]
then
    echo "success"
    exit
fi


# edp 2
xrandr --output eDP-1 --primary --mode 1920x1200 --pos 760x1440 --rotate normal --output HDMI-1 --off --output DP-1 --mode 3440x1440 --rotate normal --pos 0x0 --output DP-2 --off --output DP-3 --off --output DP-4 --off
if [ $? -eq 0 ]
then
    echo "success"
    exit
fi

# Single monitor
xrandr --output eDP-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off

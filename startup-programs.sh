#!/bin/bash

xmodmap ~/.Xmodmap
xset r rate 220 40
xbindkeys
./.screenlayout/home.sh
notify-send 'The system is ready. Enjoy.' -t 2000 -i face-wink-symbolic

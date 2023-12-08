#!/bin/bash

xmodmap ~/.Xmodmap
xset r rate 220 40
xbindkeys
notify-send 'The system is ready. Enjoy.'

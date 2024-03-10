 #!/bin/bash

xmodmap ~/.Xmodmap
xset r rate 220 40
xbindkeys

autocutsel -s PRIMARY   & 
autocutsel -s CLIPBOARD &

sleep 1
notify-send 'The system is ready. Enjoy.' -t 2000 -i face-wink-symbolic

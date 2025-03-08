## Setup

Important files:
`~/.zshrc`
`~/.zshrc.local` - for files specific to that machine

## Useful tools

### Window manager

https://i3wm.org/
https://github.com/schischi/xcwd

### Terminal emulator
https://github.com/xyb3rt/urxvt-perls
https://wiki.archlinux.org/title/rxvt-unicode

### Shell

https://www.zsh.org/
https://ohmyz.sh/


### File editor
https://www.vim.org/

### Backlight
https://gitlab.com/wavexx/acpilight

See /etc/udev/rules.d/90-backlight.rules

`sudo usermod -aG video backlight`

and login-logout.
(If udev rule does not work, `sudo chgrp video /sys/class/backlight/intel_backlight/brightness`)



### Copy paste
Vim should have +clipboard:
sudo apt-get install vim-gtk3

Autocutsel must be running:
https://unix.stackexchange.com/questions/628492/merge-primary-and-clipboard-x-selections

https://github.com/davatorium/rofi

https://github.com/erebe/greenclip
https://github.com/davatorium/rofi

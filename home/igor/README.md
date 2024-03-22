## Setup

Dotfiles are managed through process described in:  [1](https://mitxela.com/projects/dotfiles_management), [2](https://www.atlassian.com/git/tutorials/dotfiles)

Key alias is:
```
alias dotfiles='git --git-dir=/home/igor/dotfiles/.git --work-tree=/'
```

## Useful tools

# Vim

Install vim-gtk3 for clipboard sharing.

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
(If udev rule does not work, `sudo chgrp /sys/class/backlight/intel_blacklight/brightness`



### Copy paste
Vim should have +clipboard:
sudo apt-get intall vim-gtk3

Autocutsel must be running:
https://unix.stackexchange.com/questions/628492/merge-primary-and-clipboard-x-selections

https://github.com/davatorium/rofi
https://github.com/erebe/greenclip

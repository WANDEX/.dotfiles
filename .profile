#!/bin/sh
# Profile file. Runs on login.
source "$HOME/.config/env/sources"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

if pacman -Qs libxft-bgra >/dev/null 2>&1; then
    # Start graphical server on tty1 if not already running.
    [ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1  && exec startx
else
    echo "\033[31mIMPORTANT\033[0m: Note that \033[32m\`libxft-bgra\`\033[0m must be installed for this build of dwm.
Please run:
    \033[32myay -S libxft-bgra\033[0m
and replace \`libxft\`"
fi


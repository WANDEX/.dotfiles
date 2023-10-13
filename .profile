#!/bin/sh
# Profile file. Runs on login.
. "$HOME/.config/env/sources"

echo "$0" | grep "bash$" >/dev/null && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1 && exec startx


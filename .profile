#!/bin/sh
# Profile file. Runs on login.
source "$HOME/.config/env/sources"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

# start graphical server if i3 not already running.
[[ "$(tty)" = "/dev/tty1" ]] && ! pgrep -x i3 >/dev/null && exec startx

#!/bin/sh
#         _      _ __
#  __ __ (_)__  (_) /_________
#  \ \ // / _ \/ / __/ __/ __/
# /_\_\/_/_//_/_/\__/_/  \__/
#

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
## display configuration
# nvidia.sh
# nvidia_2.sh
nvidia_3.sh
# xrandr.sh
# xrandr_3.sh
setbg --startup & ## set background
xset -dpms && xset s off &      # off display power manager and monitor standby
picom -b &                      # composite manager for transparency support
kb.sh && sxhkd &                # keyboard layout, repeat rate and key binds
unclutter &                     # remove mouse cursor when idle
dunst &
clight &
pidof -q transmission-daemon || transmission-daemon &
pipewire.sh && mpd && mpdas -d && mpdup &
dwmblocks &

#exec i3
exec dwm

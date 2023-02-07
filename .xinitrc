#!/bin/sh
#         _      _ __
#  __ __ (_)__  (_) /_________
#  \ \ // / _ \/ / __/ __/ __/
# /_\_\/_/_//_/_/\__/_/  \__/
#

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
conky -dq &                     # fork conky to background and silence output
nvidia.sh && setbg --startup &  # display configuration, and set background
#xrandr.sh && setbg --startup & # display configuration, and set background
xset -dpms && xset s off &      # off display power manager and monitor standby
picom -b &                      # composite manager for transparency support
kb.sh && sxhkd &                # keyboard layout, repeat rate and key binds
unclutter &                     # remove mouse cursor when idle
dunst &
clight &
transmission-daemon &
pipewire.sh && mpd && mpdas -d && mpdup &
dwmblocks &

#exec i3
exec dwm

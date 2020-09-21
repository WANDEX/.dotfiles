#!/bin/sh
#/////////////////////////////////////////////////////////////////////////////
#////__//////__//______//__//////__//______//__________//______//////______///
#/////__//__//////__////____////__////__////////__//////__////__//__//////////
#//////__////////__////__//__//__////__////////__//////______////__///////////
#///__//__//////__////__////____////__////////__//////__////__//__////////////
#__//////__//______//__//////__//______//////__//////__////__////______///////
#/////////////////////////////////////////////////////////////////////////////
# to support expand_aliases in not interactive shell (in .xinitrc for example)
# bashrc should contain shopt -s expand_aliases and be sourced by profile file
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
conky -dq &                     # fork conky to background and silence output
nvidia.sh && setbg.sh &         # display configuration, and set background
#xrandr.sh && setbg.sh &         # display configuration, and set background
xset -dpms && xset s off &      # off display power manager and monitor standby
picom -b &                      # composite manager for transparency support
kb.sh && sxhkd &                # keyboard layout, repeat rate and key binds
unclutter &                     # remove mouse cursor when idle
nhp tor                         # fork in background and don't create nohup.out
mpd && mpdscribble &
dunst &
transmission-daemon &
redshift &

#exec i3
exec dwm

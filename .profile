#!/bin/sh
# Profile file. Runs on login.


# add to $PATH .scripts and subdirs
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="${PATH}:$HOME/.local/bin"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="google-chrome-stable"

export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_SCREEN_SCALE_FACTORS=2
#export QT_SCALE_FACTOR=2
#export GDK_SCALE=1
#export GDK_DPI_SCALE=1

# export monitor outputs global names
#export OUT0="HDMI-1-4"
#export OUT1="HDMI2"

# export workspace names into env variables
source "$HOME/.scripts/sh/get_workspace_names.sh"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '\E[1;31m')";     a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '\E[1;36m')";     a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '\E[0m')";        a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '\E[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '\E[0m')";        a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '\E[1;32m')";     a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '\E[0m')";        a="${a%_}"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

#start graphical serer if i3 not already running.
[[ "$(tty)" = "/dev/tty1" ]] && ! pgrep -x i3 >/dev/null && exec startx

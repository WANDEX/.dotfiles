#!/bin/bash

export HISTSIZE=404

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

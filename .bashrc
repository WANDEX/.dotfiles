#!/bin/bash

export HISTSIZE=404

[[ $- = *i* ]] && source liquidprompt

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

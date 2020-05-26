#!/bin/bash

export HISTSIZE=404

[[ $- = *i* ]] && source liquidprompt

# expand bash aliases and be able to use functions inside non interactive shell
shopt -s expand_aliases &&
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/funcrc"  ] && source "$HOME/.config/funcrc"

#!/bin/bash
# shellcheck disable=SC1090 ## can't follow non-constant source.

sie() { [ -f "$1" ] && . "$1" ;} # source if file exist
sip() { hash "$1"   && . "$1" ;} # source if found at $PATH

# put into one case/esac block
case "$-" in
*i*) # if in interactive mode:
    sie "/usr/share/bash-completion/bash_completion"

    sie "$CHTSH/bash_completion"
    sie "$WNDX_SCRIPTS/sh/shortcuts/.cmpl_bash"

    sie "$WNDX_ENVSCR/fzf_default_command"
    sie "$XDG_CONFIG_HOME/fzf/fzf.bash"

    sip liquidprompt

    sie "$XDG_CONFIG_HOME/funcrc"
    sie "$XDG_CONFIG_HOME/aliasrc"
;;
esac

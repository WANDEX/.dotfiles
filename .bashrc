#!/bin/bash

# activate vi mode with <Esc>, from vi mode 'bind -P' - to see all key bindings
set -o vi

# expand bash aliases and be able to use functions inside non interactive shell
shopt -s expand_aliases
# get source_if_exist function and etc.
[ -f "$HOME/.config/funcrc"  ] && source "$HOME/.config/funcrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#source_if_exist "$HOME/.config/aliasrc"

[[ $- = *i* ]] && source liquidprompt

[[ $- = *i* ]] && source "/usr/share/bash-completion/bash_completion"
[[ $- = *i* ]] && source "$CHTSH/bash_completion"
[[ $- = *i* ]] && source "$SCRIPTS/sh/shortcuts/.cmpl_bash"

# fzf enable fuzzy completion [example]: cd **<TAB>
[[ $- = *i* ]] && source "/usr/share/fzf/completion.bash"
[[ $- = *i* ]] && source "/usr/share/fzf/key-bindings.bash"

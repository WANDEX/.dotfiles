#!/bin/bash

# activate vi mode with <Esc>, from vi mode 'bind -P' - to see all key bindings
set -o vi

# expand bash aliases and be able to use functions inside non interactive shell
shopt -s expand_aliases
# functions defined in funcrc
[ -f "$HOME/.config/funcrc"  ] && source "$HOME/.config/funcrc"

# sip() - source if found at $PATH
[[ $- = *i* ]] && sip liquidprompt

# sie() - source if exist
sie "$HOME/.config/aliasrc"

[[ $- = *i* ]] && sie "/usr/share/bash-completion/bash_completion"
[[ $- = *i* ]] && sie "$CHTSH/bash_completion"
[[ $- = *i* ]] && sie "$SCRIPTS/sh/shortcuts/.cmpl_bash"

# fzf enable fuzzy completion [example]: cd **<TAB>
[[ $- = *i* ]] && sie "/usr/share/fzf/completion.bash"
[[ $- = *i* ]] && sie "/usr/share/fzf/key-bindings.bash"

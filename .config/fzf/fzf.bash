# Setup fzf
# ---------
# shellcheck disable=SC1091 # No such file or directory

FZF_DIR="$HOME/Downloads/git/fzf"
[ -d "$FZF_DIR" ] || return

if [[ ! "$PATH" == *${FZF_DIR}/bin* ]]; then
  PATH="${PATH:+${PATH}:}${FZF_DIR}/bin"
fi

# Auto-completion
# ---------------
source "${FZF_DIR}/shell/completion.bash"

# Key bindings
# ------------
source "${FZF_DIR}/shell/key-bindings.bash"


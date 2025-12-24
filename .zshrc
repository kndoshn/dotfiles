# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source $HOME/.zshenv
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
eval "$(anyenv init -)"

## aliases
source $HOME/.zsh/aliases.zsh

# Flutter
export PATH=~/flutter/bin:$PATH

# less (Homebrew)
export PATH="$(brew --prefix)/opt/less/bin:$PATH"
export DELTA_PAGER='less -R --mouse --wheel-lines=4'

# eza completions
export FPATH="/opt/homebrew/opt/eza/completions/zsh:$FPATH"

# Homebrew completions
if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    autoload -Uz compinit
    compinit
fi


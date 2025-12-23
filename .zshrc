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


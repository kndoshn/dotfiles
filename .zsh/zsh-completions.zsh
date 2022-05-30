## Ref: https://zenn.dev/sprout2000/articles/bd1fac2f3f83bc

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    compinit
fi
# Homebrew prefix (cache for performance)
BREW_PREFIX="$(brew --prefix)"

# anyenv
eval "$(anyenv init -)"

# Aliases
source "$HOME/.zsh/aliases.zsh"

# Prompt
source "$HOME/.zsh/prompt_visual.zsh"
source "$HOME/.zsh/git_prompt.zsh"

# less
export PATH="$BREW_PREFIX/opt/less/bin:$PATH"
export DELTA_PAGER='less -R --mouse --wheel-lines=4'

# Completions
export FPATH="$BREW_PREFIX/opt/eza/completions/zsh:$FPATH"
FPATH="$BREW_PREFIX/share/zsh/site-functions:$FPATH"
autoload -Uz compinit
compinit

# zoxide
eval "$(zoxide init zsh)"

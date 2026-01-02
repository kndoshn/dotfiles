# Homebrew prefix (macOS)
if command -v brew >/dev/null 2>&1; then
  BREW_PREFIX="$(brew --prefix)"
fi

# anyenv
if command -v anyenv >/dev/null 2>&1; then
  eval "$(anyenv init -)"
fi

# Aliases
source "$HOME/.zsh/aliases.zsh"

# Prompt
source "$HOME/.zsh/prompt_visual.zsh"
source "$HOME/.zsh/git_prompt.zsh"

# less (Homebrew)
if [ -n "${BREW_PREFIX:-}" ] && [ -d "$BREW_PREFIX/opt/less/bin" ]; then
  export PATH="$BREW_PREFIX/opt/less/bin:$PATH"
fi
export DELTA_PAGER='less -R --mouse --wheel-lines=4'

# Completions
if [ -n "${BREW_PREFIX:-}" ]; then
  [ -d "$BREW_PREFIX/opt/eza/completions/zsh" ] && export FPATH="$BREW_PREFIX/opt/eza/completions/zsh:$FPATH"
  [ -d "$BREW_PREFIX/share/zsh/site-functions" ] && FPATH="$BREW_PREFIX/share/zsh/site-functions:$FPATH"
fi
autoload -Uz compinit
compinit

# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# Local overrides (not tracked in git)
[ -f "$HOME/.zshrc.local" ] && . "$HOME/.zshrc.local"

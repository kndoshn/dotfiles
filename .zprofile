# Homebrew (macOS)
if [ "$(uname -s)" = "Darwin" ] && [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Local overrides (not tracked in git)
[ -f "$HOME/.zprofile.local" ] && . "$HOME/.zprofile.local"

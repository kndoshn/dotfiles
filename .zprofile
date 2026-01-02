# Homebrew (macOS)
if [ "$(uname -s)" = "Darwin" ]; then
  if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ -x /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

# Local overrides (not tracked in git)
[ -f "$HOME/.zprofile.local" ] && . "$HOME/.zprofile.local"

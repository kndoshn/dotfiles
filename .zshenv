# PATH (add only if directory exists)
[ -d "/usr/local/bin" ] && export PATH="/usr/local/bin:$PATH"
[ -d "/opt/homebrew/opt/openjdk@11/bin" ] && export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
[ -d "$HOME/.deno/bin" ] && export PATH="$HOME/.deno/bin:$PATH"
[ -d "$HOME/flutter/bin" ] && export PATH="$HOME/flutter/bin:$PATH"

# Cargo
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Local overrides (not tracked in git)
[ -f "$HOME/.zshenv.local" ] && . "$HOME/.zshenv.local"

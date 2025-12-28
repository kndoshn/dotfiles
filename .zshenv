# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"

# Cargo
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

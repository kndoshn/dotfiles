#!/bin/sh
set -eu

# Resolve dotfiles directory from script location
DOTFILES_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

# Create symbolic links
"$DOTFILES_DIR/links.sh"

echo "dotfiles installed successfully"

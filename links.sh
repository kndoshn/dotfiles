#!/bin/sh
set -eu

# Resolve dotfiles directory from script location
DOTFILES_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

# Helper function: create parent directory and symlink
link_file() {
  src="$1"
  dst="$2"
  mkdir -p "$(dirname "$dst")"
  ln -sfn "$src" "$dst"
}

# Detect OS
OS="$(uname -s)"

# Shell
link_file "$DOTFILES_DIR/.zshenv" "$HOME/.zshenv"
link_file "$DOTFILES_DIR/.zprofile" "$HOME/.zprofile"
link_file "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/.zsh" "$HOME/.zsh"

# Editor
link_file "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"

# Git
link_file "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"
link_file "$DOTFILES_DIR/.gitignore-template" "$HOME/.gitignore-template"

# Claude Code (ensure ~/.claude exists)
mkdir -p "$HOME/.claude"
link_file "$DOTFILES_DIR/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
link_file "$DOTFILES_DIR/claude/settings.json" "$HOME/.claude/settings.json"

# Codex (ensure ~/.codex exists)
mkdir -p "$HOME/.codex"
link_file "$DOTFILES_DIR/codex/config.toml" "$HOME/.codex/config.toml"
link_file "$DOTFILES_DIR/codex/AGENTS.md" "$HOME/.codex/AGENTS.md"
link_file "$DOTFILES_DIR/codex/skills" "$HOME/.codex/skills"

# Ghostty (macOS only)
if [ "$OS" = "Darwin" ]; then
  link_file "$DOTFILES_DIR/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
fi

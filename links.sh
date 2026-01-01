#!/bin/sh
set -e

# Shell
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zsh ~/.zsh

# Editor
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.gitignore-template ~/.gitignore-template

# Claude Code
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json

# Codex
ln -sf ~/dotfiles/codex/config.toml ~/.codex/config.toml
ln -sf ~/dotfiles/codex/AGENTS.md ~/.codex/AGENTS.md
ln -sf ~/dotfiles/codex/skills ~/.codex/skills

# Ghostty
ln -sf ~/dotfiles/ghostty/config ~/Library/Application\ Support/com.mitchellh.ghostty/config

#!/bin/sh
set -e
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

## Make Symbolic Links to Local
. "$SCRIPT_DIR/links.sh"

## Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock tilesize -int 55
defaults write com.apple.dock magnification -bool true

## Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## Trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write -g com.apple.trackpad.scaling -float 15

## Other
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.screencapture disable-shadow -boolean true
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.TextEdit RichText -int 0

killall Dock
killall Finder

# Install

## Xcode Command Line Tools
if ! xcode-select -p &>/dev/null; then
  xcode-select --install
fi

## Homebrew
if [ ! -x "$(which brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update
  brew upgrade
fi

## Install packages via Brewfile
brew bundle --file="$SCRIPT_DIR/Brewfile"

## anyenv
if [ ! -d "$HOME/.anyenv" ]; then
  anyenv install --init
fi

## gitignore_global
if ! grep -q "^\.DS_Store$" ~/.gitignore_global 2>/dev/null; then
  echo .DS_Store >> ~/.gitignore_global
fi

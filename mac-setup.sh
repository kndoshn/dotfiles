#!/bin/sh

## zsh-completions
chmod -R go-w /opt/homebrew/share

## Make Symbolic Links to Local
. links.sh

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
gem update --system
xcode-select --install

if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade --all --cleanup
fi

## Homebrew
brew install carthage
brew install gh
brew install jq
brew install ruby-build
brew install vim
brew install bat
brew install trash
brew install fd
brew install zsh
brew install zsh-completions
brew install zsh-autosuggestions

brew install --cask karabiner-elements
brew install --cask skitch
brew install --cask slack
brew install --cask alfred
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask kindle
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask appcleaner
brew install --cask android-studio
brew install --cask authy
brew install --cask java
brew install --cask microsoft-powerpoint
brew install --cask microsoft-teams
brew install --cask webex-meetings
brew install --cask zoom

## anyenv
brew install anyenv
anyenv install --init
anyenv install rbenv

## git
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

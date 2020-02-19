#!/bin/sh

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

if [ ! -x "`which pod`" ]; then
  sudo gem install -n /usr/local/bin cocoapods
fi

## Homebrew
brew install carthage
brew install cloc
brew install fzf
brew install ghq
brew install hub
brew install jq
brew install ruby
brew install ruby-build
brew install tree
brew install vim
brew install httpie
brew install tmux
brew install ccat
brew install rmtrash
brew install libiconv
brew install htop
brew install nmap
brew install wget

brew cask install karabiner-elements
brew cask install skitch
brew cask install slack
brew cask install alfred
brew cask install iterm2
brew cask install google-chrome
brew cask install kindle
brew cask install 1password
brew cask install visual-studio-code
brew cask install appcleaner
brew cask install paw

brew tap brona/iproute2mac
brew install iproute2mac

## anyenv
brew install anyenv
anyenv install --init
anyenv install rbenv

## fish
brew install fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add oh-my-fish/theme-bobthefish
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ../
rm -rf fonts
git clone https://github.com/dracula/iterm.git
cd iterm
open ./iterm/Dracula.itermcolors
cd ..
rm -rf iterm
fish_update_completions
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

## git
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

## android development
brew cask install java
brew cask install android-studio
anyenv install jenv

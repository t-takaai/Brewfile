#!/bin/bash

# Install Homebrew
if ! type "brew" > /dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brewfile
[ ! -d ~/Brewfile ] && git clone https://github.com/t-takaai/Brewfile.git ~/Brewfile

# Install Apps
brew tap Homebrew/bundle
brew bundle --file=~/Brewfile/Brewfile
brew linkapps
brew cleanup
brew cask cleanup
brew doctor
brew cask doctor

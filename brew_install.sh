#!/bin/bash

# If Homebrew is not installed
if ! which brew > /dev/null; then
     # Install Homebrew 
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Install everything in Brewfile

brew doctor
brew prune

brew tap Homebrew/bundle

brew bundle -v --file=Tapfile

brew update
brew upgrade

brew bundle -v 

brew bundle -v --file=Caskfile
brew bundle -v --file=Gemfile
brew bundle -v --file=Masfile

brew cleanup -s

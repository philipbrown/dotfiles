#!/bin/sh
#
# Homebrew
#
# The missing package manager for OS X

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# GitHub repositories
TAPS=(
    caskroom/versions
)

brew tap ${TAPS[@]}

# Brew Formulas
FORMULAS=(
    wget
    npm
    hub
    caskroom/cask/brew-cask
    josegonzalez/php/composer --ignore-dependencies
)

brew install ${FORMULAS[@]}

# Brew Casks
CASKS=(
    google-chrome
    dropbox
    iterm2
    macvim
    evernote
    adobe-creative-cloud
    virtualbox
    vagrant
)

brew cask install --appdir="/Applications" ${CASKS[@]}

brew cleanup

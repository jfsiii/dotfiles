#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using Homebrew.
which brew 1>/dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Save Homebrew's installed location
BREW_PREFIX=$(brew --prefix)

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install formulas listed in .brew-formulas
xargs brew install < .brew-formulas

# Remove outdated versions from the cellar.
brew cleanup

#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Warp
brew install --cask warp

# Install Arc browser
brew install --cask arc

# Install Brave browser
brew install --cask brave-browser

#Install OKD
brew install openshift-cli

# Install Podman
brew install podman

# Install Podman Desktop
brew install --cask podman-desktop

# Install Docker
brew install docker


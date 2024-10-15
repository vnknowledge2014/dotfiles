#!/bin/bash

# Add Homebrew to PATH
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/usr/local/bin/brew shellenv)"

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


#!/bin/bash

# Add Homebrew to PATH
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Install essential build tools
sudo apt install -y build-essential curl file git

# Install OKD, Docker, Podman
brew install docker podman openshift-cli 

# Install Warp
read -p "Do you want to install Warp? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    source ./scripts/install_warp.sh
fi

# Install Brave browser
read -p "Do you want to install Brave browser? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo apt install apt-transport-https curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser
fi

# Install Podman Desktop
read -p "Do you want to install Podman Desktop? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
     brew install --cask podman-desktop
fi

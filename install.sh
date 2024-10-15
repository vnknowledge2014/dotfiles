#!/bin/bash

# ZSH - STARSHIP - NEOVIM
brew install zsh starship neovim

# Determine OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="MacOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="Linux"
else
    echo "Unsupported OS"
    exit 1
fi

# Ask for confirmation
read -p "Setting up dotfiles for $OS. Continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

# Run OS-specific setup
if [[ "$OS" == "MacOS" ]]; then
    source ./macos_setup.sh
else
    source ./linux_setup.sh
fi

# Run common setup
source ./common_setup.sh

# Copy config files
cp configs/* ~/

echo "Setup complete! Please restart your terminal or source your ~/.zshrc file."


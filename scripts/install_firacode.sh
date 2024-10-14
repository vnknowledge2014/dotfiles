#!/bin/bash

install_firacode_macos() {
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
}

install_firacode_linux() {
    sudo apt update
    sudo apt install -y fonts-firacode
}

if [[ "$OSTYPE" == "darwin"* ]]; then
    install_firacode_macos
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    install_firacode_linux
else
    echo "Unsupported OS for FiraCode installation"
    exit 1
fi

echo "FiraCode font installed successfully!"


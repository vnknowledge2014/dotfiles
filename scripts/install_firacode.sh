#!/bin/bash

install_firacode_macos() {
    brew install --cask font-fira-code-nerd-font
}

install_firacode_linux() {
    brew install --cask font-fira-code-nerd-font
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


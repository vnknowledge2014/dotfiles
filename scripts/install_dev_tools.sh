#!/bin/bash

# ZSH
brew install zsh starship

# OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# K9S
brew install k9s

# Install LLVM Clang
asdf plugin add clang https://github.com/higebu/asdf-llvm.git
asdf plugin add clang-format https://github.com/higebu/asdf-llvm.git
asdf plugin add clangd https://github.com/higebu/asdf-llvm.git
asdf plugin add llvm-objcopy https://github.com/higebu/asdf-llvm.git
asdf plugin add llvm-objdump https://github.com/higebu/asdf-llvm.git

# Install CMAKE
asdf plugin add cmake
asdf install cmake latest
asdf global cmake latest
asdf shell cmake latest

# Install FZF
asdf plugin add fzf
asdf install fzf latest
asdf global fzf latest
asdf shell fzf latest

# Install jq
asdf plugin add jq
asdf install jq latest
asdf global jq latest
asdf shell jq latest

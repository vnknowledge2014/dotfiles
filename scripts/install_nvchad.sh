#!/bin/bash

# Install NVChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Add custom configuration
mkdir -p ~/.config/nvim/lua/custom/configs
cp ../nvchad/* ~/.config/nvim/lua/custom/
cp ../nvchad/configs/* ~/.config/nvim/lua/custom/configs/

# Install plugins and quit
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync +qall

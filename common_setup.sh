#!/bin/bash

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
. $HOME/.asdf/asdf.sh

# Install dev tools
source ./scripts/install_dev_tools.sh

# Install programming languages
source ./scripts/install_languages.sh

# Install FiraCode font
source ./scripts/install_firacode.sh

# Install NVChad
source ./scripts/install_nvchad.sh

# Install terminal apps
source ./scripts/install_terminal_apps.sh

# Install WARP Cloudflare
curl https://pkg.cloudflareclient.com/install | sudo bash

# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Set ZSH as default shell
chsh -s $(which zsh)

# Copy configuration files
source ./scripts/copy_configs.sh


#!/bin/bash

# Install asdf
brew install asdf
echo '. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
. $HOME/.asdf/asdf.sh

# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Copy configuration files
source ./scripts/copy_configs.sh

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

# Set ZSH as default shell
chsh -s $(which zsh)


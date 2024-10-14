# Dotfiles

This repository contains my personal dotfiles and setup scripts for quickly configuring a new development environment on macOS or Ubuntu Linux.

## Directory:
dotfiles/
│
├── install.sh
├── macos_setup.sh
├── linux_setup.sh
├── common_setup.sh
├── nvchad/
│   ├── chadrc.lua
│   ├── custom_init.lua
│   ├── configs
|   |   ├── rust-tools.lua
|   |   ├── lspconfig.lua
|   |   └── null-ls.lua
├── configs/
│   ├── tmux.conf
│   ├── zshrc
│   ├── zsh_variables
│   ├── zsh_aliases
│   └── starship.toml
└── scripts/
    ├── install_nvchad.sh
    ├── install_dev_tools.sh
    ├── install_languages.sh
    ├── install_terminal_apps.sh
    └── install_firacode.sh

## Features

- Automatic installation of development tools and languages
- Configuration for zsh, tmux, and Neovim (NVChad)
- Installation of terminal-based applications
- Support for both macOS and Ubuntu Linux

## Prerequisites

- Git
- Bash

## Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/dotfiles.git cd dotfiles
```

2. Make the install script executable:

```bash
chmod +x install.sh
```

3. Run the install script:

```bash
./install.sh
```

4. Follow the prompts to complete the installation.

## What's Included

- Warp.dev (optional on Linux, default on macOS)
- Development tools: Ollama, Docker, Podman, K8S, K9S, OpenShift, Termux, NeoVim, Git, ZSH, Starship, AWSCLI, jq, fzf, cmake, gcc, clang
- Programming languages/Tools: NodeJS, Bun, Deno, Erlang, Elixir, Golang, Gleam, Lua, Java, Zig, Rust, Ruby, Python, Unison, TypeScript, C++, C, Haskell, Kotlin, Scala, Dart, Flutter, React, NextJS, Qwik, Hono, ExpressJS, Elysia, NestJS.
- NVChad configuration for Neovim
- WARP Cloudflare for terminal
- Terminal applications: spotify-tui, youtube-tui, dblab-bin, gobang-bin, tgt
- Arc and Brave browsers (Arc on macOS only)
- Podman Desktop
- FiraCode font

## Customization

You can customize the configurations by editing the files in the `configs/` directory before running the install script.

## Updating

To update your configurations, pull the latest changes from this repository and run the install script again:

```bash
git pull ./install.sh
```

## Uninstalling

This script doesn't provide an automatic uninstall process. To remove the configurations, you'll need to manually delete the installed applications and revert any changes made to your home directory.

## Contributing

Feel free to fork this repository and customize it for your own use. If you have any improvements or bug fixes, pull requests are welcome!

## License

This project is open source and available under the [MIT License](LICENSE).


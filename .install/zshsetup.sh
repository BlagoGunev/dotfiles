#!/usr/bin/bash
set -e

# Install zsh
sudo dnf install -y zsh

# Change shell
sudo chsh $USER -s $(which zsh)

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change the default .zshrc from oh-my-zsh to include paths and theme
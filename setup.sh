#!/bin/bash
set -x

# Install dependencies
sudo apt update
sudo apt install -y zsh git curl

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Copy configuration files
cp ./dotfiles/.zshrc ~/
mkdir -p ~/.config
cp ./dotfiles/starship.toml ~/.config/

# Change default shell to zsh
chsh -s $(which zsh)

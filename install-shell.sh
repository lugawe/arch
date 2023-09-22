#!/bin/sh

set -e

sudo pacman -S curl zsh lsd

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo chsh -s /usr/bin/zsh "$USER"

echo "alias ls=\"lsd\"" >> ~/.zshrc
echo "alias l=\"lsd -l\"" >> ~/.zshrc
echo "alias la=\"lsd -la\"" >> ~/.zshrc

#!/bin/sh

set -e

echo "Install packages..."

sudo pacman -S git base-devel ttf-hack-nerd libx11 libxft libxinerama xorg-server xorg-xinit alacritty

echo "Install suckless dwm / tools..."

cd dwm && sudo make clean install && cd ..
cd dmenu && sudo make clean install && cd ..
cd slstatus && sudo make clean install && cd ..

echo "Setup init files..."

echo "slstatus &" >> ~/.xinitrc
echo "exec dwm" >> ~/.xinitrc

#!/bin/sh

set -e

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

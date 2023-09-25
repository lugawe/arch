#!/bin/sh

set -e

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

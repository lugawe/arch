#!/bin/sh

set -e

config_dir="/home/$USER/.config"
waybar_config_dir="$config_dir/waybar"
wofi_config_dir="$config_dir/wofi"
alacritty_config_dir="$config_dir/alacritty"
hypr_config_dir="$config_dir/hypr"

mkdir -p "$config_dir"
mkdir -p "$waybar_config_dir"
mkdir -p "$wofi_config_dir"
mkdir -p "$alacritty_config_dir"
mkdir -p "$hypr_config_dir"

cp waybar/config "$waybar_config_dir"
cp waybar/style.css "$waybar_config_dir"
cp wofi/style.css "$wofi_config_dir"
cp alacritty.yml "$alacritty_config_dir"
cp hyprland.conf "$hypr_config_dir"
cp hyprpaper.conf "$hypr_config_dir"

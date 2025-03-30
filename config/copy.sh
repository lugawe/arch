#!/bin/sh

config_dir="/home/$USER/.config"
alacritty_config_dir="$config_dir/alacritty"
hypr_config_dir="$config_dir/hypr"

mkdir -p "$config_dir"
mkdir -p "$alacritty_config_dir"
mkdir -p "$hypr_config_dir"

cp alacritty.toml "$alacritty_config_dir"
cp hyprland.conf "$hypr_config_dir"
cp hypridle.conf "$hypr_config_dir"
cp hyprlock.conf "$hypr_config_dir"
cp hyprpaper.conf "$hypr_config_dir"

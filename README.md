# arch

Arch linux configs, dotfiles, etc.

## Install packages

### Packages

Needed:

```shell
git base-devel ttf-hack-nerd ttf-font-awesome alacritty hyprland hyprpaper waybar
```

Optional:

```shell
python vim neovim tmux lsd
```

## Install oh-my-zsh

```shell
pacman -S zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo chsh -s /usr/bin/zsh "$USER"
```

```shell
pacman -S lsd
echo "alias ls=\"lsd\"" >> ~/.zshrc
echo "alias l=\"lsd -l\"" >> ~/.zshrc
echo "alias la=\"lsd -la\"" >> ~/.zshrc
```

# arch

Arch linux configs, dotfiles, etc.

## Install packages

### Packages

Needed:

```shell
git base-devel ttf-hack-nerd libx11 libxft libxinerama xorg-server xorg-xinit alacritty
```

Optional:

```shell
python vim neovim tmux lsd
```

## Install dwm stuff

### dwm

```shell
make clean install
```

### dmenu

```shell
make clean install
```

### slstatus

```shell
make clean install
```

## Autostart

### Place in xinitrc file

In ~/.xinitrc

```shell
slstatus &
exec dwm
```

### Place in profile file

For zsh in ~/.zprofile

```shell
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
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

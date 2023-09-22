# arch

Arch linux configs, dotfiles, etc.

## Install packages

### Install packages

```shell
pacman -S git base-devel ttf-hack-nerd libx11 libxft libxinerama xorg-server xorg-xinit alacritty
```

```shell
pacman -S python vim neovim tmux lsd
```

### Install oh-my-zsh

```shell
pacman -S zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.bash*
```

Apply plugins: git ssh-agent sudo

## Install dwm stuff

### dwm

```shell
make clean install
```

### dmenu

```shell
make clean install
```

## Autostart

### Place in .xinitrc file

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

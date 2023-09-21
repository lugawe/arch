# arch

Arch linux configs, dotfiles, etc.

## Install packages

Install packages

```shell
pacman -S git base-devel vim neovim curl less zsh tmux ttf-hack libx11 libxft libxinerama xorg-server xorg-xinit alacritty
```

Install oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install dwm stuff

dwm

```shell
make clean install
```

dmenu

```shell
make clean install
```

## Autostart

Place in .xinitrc file

```shell
exec dwm
```

Place in profile file

```shell
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
```

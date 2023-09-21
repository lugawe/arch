# arch

Arch linux configs, dotfiles, etc.

## Install packages

### Install packages

```shell
pacman -S git base-devel vim neovim curl less zsh tmux ttf-hack-nerd libx11 libxft libxinerama xorg-server xorg-xinit alacritty
```

```shell
pacman -S python
```

### Install oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```shell
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

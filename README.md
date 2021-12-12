# gerarch - my scripts to auto-rice arch linux
Script to auto-install and auto-rice arch based distros. By the moment it
supports **systemd** (Arch Linux) and **openrc** (Artix). It setup an environment
in less than 15 min to have a computer ready for daily use.

## Table of contents
1. [Features](#features)
2. [Notes](#notes)
3. [Requirements](#req)
4. [Installation](#install)
5. [Recommendations](#recommendations)
6. [Available packages](#pkg)


<a name="features"></a>
## Features
- `base-ext` includes `base-min` and the base for a graphical desktop setup
- `base-min` installs an AUR helper, you can change it in `install.sh`
- `base-min` sets up *agetty* for autologin or auto-insert username
- It supports emojis with the patched `libxft-bgra` (installed in `base-ext`)
- `base-ext` includes ubuntu, hack, awesome and noto color emoji fonts
- Extensible and simple installation scripts
- Suckless programs everywhere! (compiled from source)
- All this packages are installed and **auto-riced**
- It takes less than 20 minutes to install all (12-15 withot *latex*)

<a name="notes"></a>
## Notes
- `base-min` and `base-ext` can take a while (aur helper, refreshing packages, ...)
- `latex` also takes a while (install all fonts)
- `zsh`, `nvim` and `emacs` are already configured but they'll have to install the plugins manually for the first usage
- Install plugins in `nvim` with `:PlugInstall`
- Install packages in `emacs` with `M-x package-refresh-contents` and restart Emacs twice

<a name="req"></a>
## Requirements
- A minimal arch/artix installation (systemd/artix)
- A regular user (don't run it with `sudo`). However, it must have sudo privileges to install from
pacman and aur
- `git`, to clone *gerarch*
- a text editor, such as `vi` or `nano`
- some space in disk (at least 15G for full installation)


<a name="install"></a>
## Installation
**NOTE**: DON'T RUN IT WITH *sudo*!!

1. Clone this repository
```bash
git clone https://github.com/gerardet46/gerarch
cd gerarch
```
2. Change some configurations in `install.sh`, such us *AUR_HELPER* or *EDITOR*
3. Select the packages you want to install and rice in `pkgs_selection.sh` by un-commenting lines
4. If you want to install `misc` package, edit `pkgs/misc/install.sh` to comment the packages you don't want
5. Execute installer
```bash
./install.sh
```
6. Check if configurations (variables) are correct and press *Y*. If not, edit some configurations in `install.sh`
7. Check whenever some package needs your interaction (see [packages](#pkg))
8. Reboot and enjoy!

<a name="recommendations"></a>
## Recommendations
- This is to download and install "my distro", so it isn't recommended to install twice *base-min* or *base-ext*,
it may crash your OS
- Install `base-min` or `base-ext` (which installs `base-min`) to setup a base for use or desktop use, respectively


<a name="pkg"></a>
## Available packages

| Name        | Description                                               | Compiled from src | User interaction     | Depends (will be installed if not satisfied) |
|-------------|-----------------------------------------------------------|-------------------|----------------------|----------------------------------------------|
| base-min    | dash, aur, bashrc, wget, man                              |                   | YES (agetty)         |                                              |
| base-ext    | xorg, redshift, xinitrc, feh, backlight, xdg-utils, fonts |                   | YES (redshift)       | base-min                                     |
| misc        | mpv, calendar, bluetooth, ... (misc)                      |                   |                      |                                              |
| gcolors     | color theme library for C and shell                       |                   |                      |                                              |
| xcompmgr    | the compositor                                            |                   |                      |                                              |
| zsh         | the interactive shell                                     |                   | YES (set def. shell) |                                              |
| picom       | the bloated compositor                                    |                   |                      |                                              |
| flybinds    | faster keyboard shortcuts                                 | YES               |                      |                                              |
| my-flybinds | same with my config                                       | YES               |                      | gcolors                                      |
| st          | the sexy terminal                                         | YES               |                      | gcolors                                      |
| dmenu       | d menu                                                    | YES               |                      | gcolors                                      |
| scripts     | dmenu scripts and useful staff                            |                   |                      | dmenu, gcolors                               |
| dunst       | notifications                                             |                   |                      |                                              |
| slock       | the sexy locker                                           | YES               |                      |                                              |
| tabbed      | some tabs (for nnn)                                       | YES               |                      |                                              |
| nnn         | the file manager                                          | YES               |                      | tabbed, AUR: pmount, dragon-drag-and-drop    |
| emacs       | the best OS (with org, magit, latex, php, C/C++, python)  |                   |                      |                                              |
| nvim        | the best text editor                                      |                   |                      |                                              |
| zathura     | vim pdf viewer                                            |                   |                      |                                              |
| sxiv        | vim image viewer                                          | YES               |                      | gcolors                                      |
| latex       | Just the packages to use latex                            |                   |                      |                                              |
| spotify     | A music player with a useful script                       |                   |                      |                                              |
| i3          | the manual window manager                                 |                   |                      |                                              |
| dwm         | the dynamic window manager                                | YES               |                      | gcolors                                      |
| dwmblocks   | blocks for dwm bar                                        | YES               |                      | gcolors                                      |

## Donate
[Donate me](https://paypal.me/gerardet46)

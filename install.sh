#!/usr/bin/env sh

_USER="$USER"
export EDITOR="vi"
AUR_HELPER="trizen"
AUR_SRC="https://aur.archlinux.org/$AUR_HELPER.git"
INIT_SYS="openrc" # openrc or systemd
CONFIG_DIR="$HOME/.config"

GER_GITHUB="https://github.com/gerardet46/"

aur_ins() { "$AUR_HELPER" --noconfirm --needed -S "$@"; }
pac_ins() { sudo pacman --noconfirm --needed -S "$@"; }
add_autostart() { printf "\n$1" >> "$CONFIG_DIR/xstart"; }
ger_msg() {
    printf "\n$1"
    printf "\n$1" >> install.log
}

# make build directory
[ -d "build/" ] || mkdir build
[ -d "$CONFIG_DIR/" ] || mkdir "$CONFIG_DIR"

ger_ins() {
    _file="scripts/$1.sh"
    if [ -f "$_file" ]; then
	echo "#### Installing $1 ####"
	. "$_file"
    else
	echo "Not found: $1"
    fi
}

###################################
# SELECT PROGRAMS HERE

# add/comment script name (without .sh) to be installed
# comments starting with "BE" means that are included in `base-ext`
# comments starting with "SR" means that are compiled from source

####################################
# BASE
ger_ins "base-min"        # aur, arch mirrors, fakeroot, dash, xorg, compositor, audio, xinitrc
#ger_ins "base-ext"        # (for desktop )base-min + xdg-utils, backlight, feh (wallpaper), redshift, mouse, fonts, support for emoji

# COMPOSITORS:
#ger_ins "xcompmgr"        # a basic compositor
#ger_ins "picom"           # a bloated compositor

# UTILITIES
#ger_ins "zsh"             # the best POSIX-compliant shell
#ger_ins "st"              # (BE, SR) the best terminal
#ger_ins "dmenu"           # (BE, SR) the menu
#ger_ins "dmenu-scripts"   # (BE) scripts for dmenu
#ger_ins "dunst"           # for notifications
#ger_ins "slock"           # (BE, SR) the locker
#ger_ins "tabbed"          # needed for nnn preview
#ger_ins "nnn"             # (SR) file manager (includes tabbed)
#ger_ins "emacs"           # the best OS
#ger_ins "nvim"            # the best text editor
#ger_ins "zathura"         # vim pdf-viewer
#ger_ins "sxiv"            # (SR) the image viewer

# BIG SOFTWARE
#ger_ins "latex"           # math staff
#ger_ins "php"             # apache, sass, sql, php, phpmyadmin
#ger_ins "spotify"         # spotify with useful `sp` script

# WINDOW MANAGERS:
#ger_ins "i3"              # manual WM

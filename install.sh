#!/usr/bin/env sh
_USER="$USER"
AUR_HELPER="trizen"
AUR_SRC="https://aur.archlinux.org/$AUR_HELPER.git"
INIT_SYS="openrc" # openrc or systemd
CONFIG_DIR="$HOME/.config"

aur_ins() { "$AUR_HELPER" --noconfirm --needed -S "$1" >/dev/null 2>&1; }
pac_ins() { sudo pacman --noconfirm --needed -S "$1" >/dev/null 2>&1; }
add_to_xinit() { printf "\n$1" >> "$HOME/.xinitrc"; }

GER_GITHUB="https://github.com/gerardet46/"

scs="" # do not touch this
scs_add() { [ -z "$scs" ] && scs="$1" || scs="$scs\n$1"; }

###################################
# SELECT PROGRAMS HERE

# add/comment script name (without .sh) to be installed
# comments starting with "BE" means that are included in `base-ext`
# comments starting with "SR" means that are compiled from source

####################################
# BASE
scs_add "base-min"        # dash, xorg, compositor, audio, ...
scs_add "base-ext"        # (for desktop) base-min with fonts, xdg themes, audio, backlight ... (all useful desktop staff)

# COMPOSITORS:
scs_add "xcompmgr"        # a basic compositor
scs_add "picom"           # a bloated compositor

# UTILITIES
scs_add "zsh"             # the best POSIX-compliant shell
scs_add "st"              # (BE, SR) the best terminal
scs_add "dmenu"           # (BE, SR) the menu
scs_add "dmenu-scripts"   # (BE) scripts for dmenu
scs_add "dunst"           # for notifications
scs_add "slock"           # (BE, SR) the locker
scs_add "tabbed"          # needed for nnn preview
scs_add "nnn"             # (SR) file manager (includes tabbed)
scs_add "emacs"           # the best OS
scs_add "nvim"            # the best text editor
scs_add "zathura"         # vim pdf-viewer
scs_add "sxiv"            # (SR) the image viewer

# BIG SOFTWARE
scs_add "latex"           # math staff
scs_add "php"             # apache, sass, sql, php, phpmyadmin
scs_add "spotify"         # spotify with useful `sp` script

# WINDOW MANAGERS:
scs_add "i3"              # manual WM
scs_add "dwm"             # (SR) suckless WM
####################################

# check if nothing to do
[ -z "$scs" ] && exit 1

# make build directory
[ -d "build/" ] || mkdir build

# install
echo "$scs" | while read _script
do
    _file="scripts/$_script.sh"
    if [ -f "$_file" ]; then
	echo "#### Installing $_script ####"
	. "$_file"
    else
	echo "Not found: $_script"
    fi
done

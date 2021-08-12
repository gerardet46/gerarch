#!/usr/bin/env sh

AUR_HELPER="trizen"
AUR_SRC="https://aur.archlinux.org/$AUR_HELPER.git"
AUR_INS="$AUR_HELPER --noconfirm --needed -S"
PAC_INS="sudo pacman --noconfirm --needed -S"
INIT_SYS="openrc" # openrc or systemd

GER_GITHUB="https://github.com/gerardet46/"
scs="" # do not touch this

scs_add() {
    if [ -z "$scs" ]; then
	scs="$1"
    else
	scs="$scs\n$1"
    fi
}

# add/comment script name (without .sh) to be installed
# comments starting with "BE" means that are included in `base-ext`
# comments starting with "SR" means that are compiled from source

####################################

# scs_add "base-min"        # dash, xorg, compositor, audio, ...
scs_add "base-ext"        # (for desktop) base-min with fonts, xdg themes, audio, backlight ... (all useful desktop staff)
scs_add "dunst"           # for notifications
scs_add "st"              # (BE, SR) the best terminal
scs_add "dmenu"           # (BE, SR) the menu
scs_add "dmenu-scripts"   # (BE) scripts for dmenu
scs_add "slock"           # (BE, SR) the locker
scs_add "nnn"             # (SR) file manager (includes tabbed)
scs_add "tabbed"          # needed for nnn preview
scs_add "emacs"           # the best OS
scs_add "nvim"            # the best text editor
scs_add "zsh"             # the best POSIX-compliant shell
scs_add "i3"              # manual WM
scs_add "dwm"             # (SR) suckless WM
scs_add "zathura"         # vim pdf-viewer
scs_add "sxiv"            # (SR) the image viewer
scs_add "latex"           # math staff
scs_add "php"             # web-dev staff
scs_add "spotify"         # spotify with useful `sp` script

# install
echo "$scs" | while read _script
do
    _file="scripts/$_script.sh"
    if [ -f "$_file" ]; then
	echo "#### Instal·lant $_script ####"
	. "$_file"
    else
	echo "No s'ha trobat $_script"
    fi
done

#!/usr/bin/env sh

_USER="$USER"
export EDITOR="vi"
AUR_HELPER="trizen"
AUR_SRC="https://aur.archlinux.org/$AUR_HELPER.git"
CONFIG_DIR="$HOME/.config"
GER_GITHUB="https://github.com/gerardet46/" # link to my github repos
DIR="$(pwd)"

# distro (manual with DISTRO="ditro name")
(cat /etc/issue | grep -i "artix" > /dev/null) && DISTRO="artix"
(cat /etc/issue | grep -i "arch" > /dev/null)  && DISTRO="arch"

# PID 1 (manual with INIT_SYS="openrc or systemd") (if not defined it uses systemd)
(ls -l /sbin/init | grep openrc > /dev/null)  && INIT_SYS="openrc"
(ls -l /sbin/init | grep systemd > /dev/null) && INIT_SYS="systemd"

# check if editor is installed
if ! which "$EDITOR" > /dev/null; then
    echo "Your selected editor is $EDITOR, but it's not installed"
    exit 1
fi

# NOTE: now edit pkgs_selection.sh to select the programs you want

###################
# FUNCTIONS (you don't need to touch this)
###################
aur_ins() { "$AUR_HELPER" --noconfirm --needed -S "$@"; }
pac_ins() { sudo pacman --noconfirm --needed -S "$@"; }
add_autostart() { printf "\n$1" >> "$CONFIG_DIR/xstart"; }
ger_msg() {
    printf "\n$1"
    printf "\n$1" >> install.log
}

ger_ins() {
    cd "$DIR" # return to default dir
    _file="scripts/$1.sh"
    if [ -f "$_file" ]; then
	echo "#### Installing $1 ####"
	. "$_file"
    else
	echo "Not found: $1"
    fi
}

# check if all right before installing
echo "DISTRO: $DISTRO"
echo "PID 1: $INIT_SYS"
echo "EDITOR: $EDITOR"
echo "USER: $USER"
echo "AUR HELPER: $AUR_HELPER (will be installed if it isn't)"
echo "CONFIG DIR: $CONFIG_DIR"
echo "This directory: $DIR"
echo "Link to my GitHub repo: $GER_GITHUB"
printf "\n"

read -p "Proceed to install? [y/N] [s/N]: " yn

case $yn in
    Y|y|S|s) echo "Ready to install!!" ;;
    *) exit 1 ;;
esac

# make build directory
[ -d "build/" ] || mkdir build
[ -d "$CONFIG_DIR/" ] || mkdir "$CONFIG_DIR"

# install programs in pkgs_selection.sh
. ./pkgs_selection.sh

#!/usr/bin/env sh

_USER="$USER"
export EDITOR="vi"
AUR_HELPER="trizen"
AUR_SRC="https://aur.archlinux.org/$AUR_HELPER.git"
CONFIG_DIR="$HOME/.config"
GER_GITHUB="https://github.com/gerardet46/" # link to my github repos

# distro (manual with DISTRO="ditro name")
(cat /etc/issue | grep -i "artix") && DISTRO="artix"
(cat /etc/issue | grep -i "arch")  && DISTRO="arch"

# PID 1 (manual with INIT_SYS="openrc or systemd") (if not defined it uses systemd)
(ls -l /sbin/init | grep openrc)  && INIT_SYS="openrc"
(ls -l /sbin/init | grep systemd) && INIT_SYS="systemd"

# make build directory
[ -d "build/" ] || mkdir build
[ -d "$CONFIG_DIR/" ] || mkdir "$CONFIG_DIR"

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
    _file="scripts/$1.sh"
    if [ -f "$_file" ]; then
	echo "#### Installing $1 ####"
	. "$_file"
    else
	echo "Not found: $1"
    fi
}

# install programs in pkgs_selection.sh
. pkgs_selection.sh

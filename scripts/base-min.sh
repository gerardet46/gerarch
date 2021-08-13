#!/usr/bin/env sh

# check if it's in artix linux and add support for pacman
if cat /etc/issue | grep -i "artix"; then
    if ! pacman -Q | grep artix-archlinux-support; then
	pac_ins artix-archlinux-support
	sudo pacman-key --populate archlinux
	cat pkgs/base-min/pacman.conf | sudo tee -a /etc/pacman.conf
	sudo $EDITOR /etc/pacman.d/mirrorlist-arch
    fi
fi

sudo pacman -Syyu
pac_ins git fakeroot dash xorg xorg-xinit man-db man-pages

# install AUR helper
if ! which "$AUR_HELPER"; then
    git clone "$AUR_SRC" "build/$AUR_HELPER"
    sed 's/^.*MAKEFLAGS.*$/MAKEFLAGS\=\"\-j\$\(nprocs\)\"/' /etc/makepkg.conf | sudo tee /etc/makepkg.conf
    cd "build/$AUR_HELPER"
    makepkg --noconfirm -si
    cd ../..

    $AUR_HELPER -Syyu
fi

# bash
cp pkgs/base-min/bashrc "$HOME/.bashrc"
source "$HOME/.bashrc"

# xinit
cp pkgs/base-min/xinitrc "$HOME/.xinitrc"
chmod +x "$HOME/.xinitrc"
if [ "$INIT_SYS" = "openrc" ]; then
    rc_path=/etc/conf.d/agetty.tty1
    sed "s/^agetty\\_options.*$/agetty\\_options\\=\\\"\\-n \\-o $_USER\\\"/" $rc_path | sudo tee $rc_path
    printf "\n#agetty_options=\"-J -n -a $USER\"" | sudo tee -a $rc_path
    ger_msg "Go to '$rc_path' to setup autologin or login options"
else
    sd_path=/etc/systemd/system/getty.target.wants/getty@tt1.service
    sed "s/ExecStart.*$/ExecStart\\=\\-\\/sbin\\/agetty \\-n \\-o $_USER \\%I \\\$TERM/" $sd_path | sudo tee $sd_path
    printf "\n#ExecStart=-/sbin/agetty -J -n -a $USER %I \$TERM" | sudo tee -a $sd_path
    ger_msg "Go to '$sd_path' to setup autologin or login options"
fi

## DASH
sudo ln -sf /usr/bin/dash /sbin/sh
# prevent to use bash after updates
sudo cp -v pkgs/base-min/dash-link.hook /usr/share/libalpm/hooks/

BASE_MIN="true"

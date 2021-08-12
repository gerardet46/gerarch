#!/usr/bin/env sh

$PAC_INS git fakeroot dash xorg xorg-xinit

# install AUR helper
if [ -z "$(which "$AUR_HELPER")"] ; then
    git clone "$AUR_SRC" "aur-helper"
    sed 's/^.*MAKEFLAGS.*$/MAKEFLAGS\=\"\-j\$\(nprocs\)\"/' /etc/makepkg.conf | sudo tee /etc/makepkg.conf
    cd aur-helper
    makepkg --noconfirm -si
    cd ..
fi

# xinit
cp pkgs/base-min/xinitrc "$HOME/.xinitrc"
chmod +x "$HOME/.xinitrc"

## DASH
sudo ln -sf /usr/bin/dash /sbin/sh
# prevent to use bash after updates
sudo cp -v pkgs/base-min/dash-link.hook /usr/share/libalpm/hooks/

$BASE_MIN="true"

#!/usr/bin/env sh

pac_ins git fakeroot dash xorg xorg-xinit

# install AUR helper
if [ -z "$(which "$AUR_HELPER")" ]; then
    git clone "$AUR_SRC" "build/$AUR_HELPER"
    sed 's/^.*MAKEFLAGS.*$/MAKEFLAGS\=\"\-j\$\(nprocs\)\"/' /etc/makepkg.conf | sudo tee /etc/makepkg.conf
    cd "build/$AUR_HELPER"
    makepkg --noconfirm -si
    cd ../..

    $AUR_HELPER -Syyu
fi

# xinit
cp pkgs/base-min/xinitrc "$HOME/.xinitrc"
chmod +x "$HOME/.xinitrc"
if [ "$INIT_SYS" = "openrc" ]; then
    rc_path=/etc/conf.d/agetty.tty1
    sed 's/options.*$/options\=\"\-n \-o $USER\"/' $rc_path | sudo tee $rc_path
    printf '\n#agetty_options="-J -n -a $USER"' | sudo tee -a $rc_path
    echo "Go to '$rc_path' to setup autologin or login options"
else
    sd_path=/etc/systed/system/getty.target.wants/getty@tt1.service
    sed 's/ExecStart.*$/ExecStart\=\-\/sbin\/agetty \-n \-o $USER \%I \$TERM/' $sd_path | sudo tee $sd_path
    printf '\n#ExecStart=-/sbin/agetty -J -n -a $USER %I \$TERM' | sudo tee -a $sd_path
    echo "Go to '$sd_path' to setup autologin or login options"
fi

## DASH
sudo ln -sf /usr/bin/dash /sbin/sh
# prevent to use bash after updates
sudo cp -v pkgs/base-min/dash-link.hook /usr/share/libalpm/hooks/

BASE_MIN="true"

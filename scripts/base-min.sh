#!/usr/bin/env sh

# check if it's in artix linux and add support for pacman
if [ "$DISTRO" = "artix" ]; then
    if ! pacman -Q | grep artix-archlinux-support; then
	sudo pacman --noconfirm -Syyu
	pac_ins artix-archlinux-support
	sudo pacman-key --populate archlinux
	cat pkgs/base-min/pacman.conf | sudo tee -a /etc/pacman.conf
	sudo $EDITOR /etc/pacman.d/mirrorlist-arch
    fi
fi

sudo pacman --noconfirm -Syyu

pac_ins git base-devel pacman-contrib fakeroot dash man-db man-pages zip unzip curl wget

# install AUR helper
if ! which "$AUR_HELPER"; then
    git clone "$AUR_SRC" "build/$AUR_HELPER"
    sed 's/^.*MAKEFLAGS.*$/MAKEFLAGS\=\"\-j\$\(nproc\)\"/' /etc/makepkg.conf | sudo tee /etc/makepkg.conf
    cd "build/$AUR_HELPER"
    makepkg --noconfirm -si

    cd "$DIR"

    $AUR_HELPER --noconfirm -Syyu
fi

# bash
cp pkgs/base-min/bashrc "$HOME/.bashrc"
source "$HOME/.bashrc"

agetty_autouser() {
    case "$INIT_SYS" in
	"openrc")
	    rc_path=/etc/conf.d/agetty.tty1
	    sudo cp "$rc_path" /etc/conf.d/agetty.tty1_backup
	    ger_msg="Backup at ${rc_path}_backup"
	    
	    sed "s/^agetty\\_options.*$/agetty\\_options\\=\\\"\\-n \\-o $_USER\\\"/" $rc_path | sudo tee $rc_path
	    printf "\n#agetty_options=\"-J -n -a $_USER\"" | sudo tee -a $rc_path
	    ger_msg "Go to '$rc_path' to setup autologin or login options"
	    ;;
	*) # "systemd"
	    sd_path=/etc/systemd/system/getty.target.wants/getty\@tty1.service
	    sudo cp "$sd_path" /etc/systemd/system/getty.target.wants/getty\@tty1.service_backup
	    ger_msg "Backup at ${sd_path}_backup"

	    sed "s/ExecStart.*$/ExecStart\\=\\-\\/sbin\\/agetty \\-n \\-o $_USER \%I \\\$TERM/" $sd_path | sudo tee $sd_path
	    printf "\n#ExecStart=-/sbin/agetty -J -n -a $_USER \%I \$TERM" | sudo tee -a $sd_path
	    ger_msg "Go to '$sd_path' to setup autologin or login options"
	    ;;
    esac
}

agetty_autologin() {
    case "$INIT_SYS" in
	"openrc")
	    rc_path=/etc/conf.d/agetty.tty1
	    sudo cp "$rc_path" /etc/conf.d/agetty.tty1_backup
	    ger_msg="Backup at ${rc_path}_backup"
	    
	    sed "s/^agetty\\_options.*$/agetty\\_options\\=\\\"\\-J \\-n \\-a $_USER\\\"/" $rc_path | sudo tee $rc_path
	    printf "\n#agetty_options=\"-n -o $_USER\"" | sudo tee -a $rc_path
	    ger_msg "Go to '$rc_path' to setup autologin or login options"
	    ;;
	*) # "systemd"
	    sd_path=/etc/systemd/system/getty.target.wants/getty\@tty1.service
	    sudo cp "$sd_path" /etc/systemd/system/getty.target.wants/getty\@tty1.service_backup
	    ger_msg "Backup at ${sd_path}_backup"

	    sed "s/ExecStart.*$/ExecStart\\=\\-\\/sbin\\/agetty \\-J \\-n \\-a $_USER \%I \\\$TERM/" $sd_path | sudo tee $sd_path
	    printf "\n#ExecStart=-/sbin/agetty -n -o $_USER \%I \$TERM" | sudo tee -a $sd_path
	    ger_msg "Go to '$sd_path' to setup autologin or login options"
	    ;;
    esac
}


read -p "Setup Login (default U): (a)utologin, default (u)ser, (n)othing: " yn

case $yn in
    n|N) echo "You'll have to prompt user and password" ;;
    a|A) agetty-autologin ;;
    *) agetty-autouser ;;
esac

## DASH
sudo ln -sf /usr/bin/dash /sbin/sh
# prevent to use bash after updates
sudo cp -v pkgs/base-min/dash-link.hook /usr/share/libalpm/hooks/

BASE_MIN="true"

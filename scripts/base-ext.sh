#!/usr/bin/env sh

# base-min
[ -z "$BASE_MIN" ] && . scripts/base-min.sh

## XORG, DESKTOP, FEH
echo "Installing xorg utilities, feh, backlight, redshift"
pac_ins xorg-xbacklight xdg-utils feh

# backlight
if [ "$INIT_SYS" = "openrc" ]; then
    pac_ins backlight-openrc

    # make it POSIX-compliant
    script_path=/etc/init.d/backlight
    sed 's/\[\[/\[/g' "$script_path" | sudo tee "$script_path"
    sed 's/\]\]/\]/g' "$script_path" | sudo tee "$script_path"

    sudo rc-update add backlight
else
    sudo systemctl enable backlight
fi

# redshift
if ! which redshift; then
    pac_ins redshift
    mkdir -p "$CONFIG_DIR/redshift"
    cp pkgs/base-ext/redshift.conf "$CONFIG_DIR/redshift"
    $EDITOR "$CONFIG_DIR/redshift/redshift.conf"
    add_to_xinit "redshift &"
fi

# feh
cp wallpaper.jpg "$CONFIG_DIR/wallpaper"
add_to_xinit "feh --bg-fill \"$CONFIG_DIR/wallpaper\" &"

## MOUSE for left and right-handed
mkdir -p "$CONFIG_DIR/mouse"
cp -r pkgs/base-ext/mouse* "$CONFIG_DIR/mouse"

## AUDIO
if ! which pulseaudio; then
    echo "Installing audio"
    pac_ins pulseaudio pulseaudio-alsa
    pulseaudio --start
fi

## FONTS
echo "Installing fonts"
pac_ins noto-fonts-emoji ttf-font-awesome ttf-ubuntu-font-family

## EMOJIS
echo "Installing emojis"
sudo pacman -Rsc libxft
aur_ins libxft-bgra

BASE_EXT="true"

#!/usr/bin/env sh

# base-min
[ -z "$BASE_MIN" ] &&. scripts/base-min.sh

## XORG, DESKTOP, FEH
echo "Installing xorg utilities, feh, backlight, ..."
pac_ins xorg-xprop xorg-xinit xorg-xrandr xorg-xbacklight feh redshift

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
mkdir -p "$CONFIG_DIR/redshift"
cp pkgs/base-ext/redshift.conf "$CONFIG_DIR/redshift"
add_to_xinit "redshift &"

# feh
cp wallpaper.jpg "$CONFIG_DIR/wallpaper"
add_to_xinit "feh --bg-fill \"$CONFIG_DIR/wallpaper\" &"

## MOUSE for left and right-handed
mkdir -p "$CONFIG_DIR/mouse"
cp -r pkgs/base-ext/mouse* "$CONFIG_DIR/mouse"

## AUDIO
echo "Installing audio"
pac_ins pulseaudio pulseaudio-alsa
pulseaudio --start

## FONTS
echo "Installing fonts"
pac_ins noto-fonts-emoji ttf-font-awesome ttf-ubuntu-font-family

## EMOJIS
echo "Installing emojis"
aur_ins libxft-bgra

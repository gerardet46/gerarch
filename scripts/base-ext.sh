#!/usr/bin/env sh

# base-min
[ -z "$BASE_MIN" ] &&. scripts/base-min.sh

## XORG, DESKTOP, FEH
$PAC_INS xcompmgr xorg-xprop xorg-xinit xorg-xrandr xorg-xbacklight feh

# backlight
if [ "$INIT_SYS" = "openrc" ]; then
    $PAC_INS backlight-openrc

    # make it POSIX-compliant
    script_path=/etc/init.d/backlight
    sed 's/\[\[/\[/g' "$script_path" | sudo tee "$script_path"
    sed 's/\]\]/\]/g' "$script_path" | sudo tee "$script_path"

    sudo rc-update add backlight
else
    sudo systemctl enable backlight
fi

# xcompmgr
printf "Section \"Extensions\"\n\tOption \"Composite\" \"true\"\nEndSection" | sudo tee -a /etc/X11/xorg.conf 
echo "xcompmgr -c &" >> "$HOME/.xinitrc"

# feh
cp wallpaper.jpg "$CONFIG_DIR/wallpaper"
echo "feh --bg-fill \"$CONFIG_DIR/wallpaper\" &" >> "$HOME/.xinitrc"

## AUDIO
$PAC_INS pulseaudio pulseaudio-alsa

## FONTS
$PAC_INS noto-fonts-emoji ttf-font-awesome ttf-ubuntu-font-family

## EMOJIS
$AUR_INS libxft-bgra

#!/usr/bin/env sh

if ! which picom; then
    pac_ins picom

    sudo cp pkgs/picom/picom.conf /etc/xdg/
    add_autostart "picom &"
fi

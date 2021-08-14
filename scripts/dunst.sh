#!/usr/bin/env sh

if ! which dunst; then
    pac_ins dunst
    mkdir -p "$CONFIG_DIR/dunst"
    cp pkgs/dunst/dunstrc "$CONFIG_DIR/dunst/dunstrc"

    add_autostart "dunst &"
fi

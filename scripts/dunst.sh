#!/usr/bin/env sh

pac_ins dunst
mkdir -p "$CONFIG_DIR/dunst"
cp pkgs/dunst/dunstrc "$CONFIG_DIR/dunst/dunstrc"

add_to_xinit "dunst &"

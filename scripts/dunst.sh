#!/usr/bin/env sh

$PAC_INS dunst
mkdir -p "$CONFIG_DIR/dunst"
cp pkgs/dunst/dunstrc "$CONFIG_DIR/dunst/dunstrc"

#!/usr/bin/env sh

pac_ins i3-gaps i3blocks

# copy config
cp -r pkgs/i3 "$CONFIG_DIR/"
cp -r pkgs/i3blocks "$CONFIG_DIR/"

sed 's/^.*exec.*$/exec i3/' "$HOME/.xinitrc" > "$HOME/.xinitrc"

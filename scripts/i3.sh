#!/usr/bin/env sh

pac_ins i3-gaps i3blocks

# copy config
cp -r pkgs/i3 "$CONFIG_DIR/"
cp -r pkgs/i3blocks "$CONFIG_DIR/"

cp -v "$HOME/.xinitrc" "$HOME/.xinitrc_backup"
ger_msg "Created backup at $HOME/.xinitrc_backup"
sed 's/^.*exec.*$/exec i3/' "$HOME/.xinitrc" > "$HOME/.xinitrc"

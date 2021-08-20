#!/usr/bin/env sh

# install dmenu if not installed
which dmenu > /dev/null || ger_ins dmenu

cp -vr pkgs/scripts "$HOME"

add_autostart '$HOME/scripts/monitors.sh auto &'

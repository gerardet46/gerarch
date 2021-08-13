#!/usr/bin/env sh

pac_ins picom

sudo cp pkgs/picom/picom.conf /etc/xdg/
add_to_xinit "picom &"

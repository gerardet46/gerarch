#!/usr/bin/env sh

if ! which emacs; then
    pac_ins emacs
    mkdir -p "$CONFIG_DIR/.emacs.d"
    cp -rv pkgs/emacs/* "$CONFIG_DIR/.emacs.d/"
fi

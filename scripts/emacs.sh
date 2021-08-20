#!/usr/bin/env sh

if ! which emacs; then
    pac_ins emacs
    cp -rv pkgs/emacs/ "$HOME/.emacs.d/"
fi

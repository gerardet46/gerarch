#!/usr/bin/env sh

if ! which emacs; then
    pac_ins emacs
    cp -rv pkgs/emacs/ "$HOME/.emacs.d/"
    ger_msg "EMACS: M-x package-refresh-contents and restart emacs to download packages"
fi

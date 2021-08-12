#!/usr/bin/env sh

if [ -z "$(which nvim)" ]; then
    $PAC_INS neovim
    mkdir -p "$CONFIG_DIR/nvim"
    cp pkgs/nvim/init.vim "$CONFIG_DIR/nvim/"
    echo "Init nvim to install plugins"
fi

#!/usr/bin/env sh

if ! which nvim; then
    # we may need to install it twice (arch linux)
    j=1
    while [ $j -le 2 ] && ! which nvim; do
	pac_ins neovim;
	j=$(( j + 1 ))
    done

    mkdir -p "$CONFIG_DIR/nvim"
    cp pkgs/nvim/init.vim "$CONFIG_DIR/nvim/"
    echo "Init nvim to install plugins"
fi

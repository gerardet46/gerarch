#!/usr/bin/env sh

if ! which flybinds; then
    git clone "$GER_GITHUB/flybinds.git" "build/flybinds"
    cd build/flybinds
    sudo make install clean
fi

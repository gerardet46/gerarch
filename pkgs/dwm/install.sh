#!/usr/bin/env sh

if ! which dwm; then
    git clone "$GER_GITHUB/dwm.git" "build/dwm"
    cd build/dwm
    sudo make install clean
fi

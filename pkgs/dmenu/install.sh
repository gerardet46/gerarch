#!/usr/bin/env sh

if ! which dmenu; then
    git clone "$GER_GITHUB/dmenu.git" "build/dmenu"
    cd build/dmenu
    sudo make install clean
fi

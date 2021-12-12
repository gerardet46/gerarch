#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which dmenu; then
    git clone "$GER_GITHUB/dmenu.git" "build/dmenu"
    cd build/dmenu
    sudo make install clean
fi

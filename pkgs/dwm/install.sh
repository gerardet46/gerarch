#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which dwm; then
    git clone "$GER_GITHUB/dwm.git" "build/dwm"
    cd build/dwm
    sudo make install clean
fi

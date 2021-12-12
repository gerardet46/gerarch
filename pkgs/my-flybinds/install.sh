#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which flybinds; then
    git clone "$GER_GITHUB/my-flybinds.git" "build/my-flybinds"
    cd build/my-flybinds
    sudo make install clean
fi

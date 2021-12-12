#!/usr/bin/env sh

if ! [ -f /usr/include/gcolors.h ]; then
    git clone "$GER_GITHUB/gcolors.git" "build/gcolors"
    cd build/gcolors
    ./install.sh
fi

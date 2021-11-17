#!/usr/bin/env sh

if ! which tabbed; then
    git clone "$GER_GITHUB/tabbed.git" "build/tabbed"
    cd build/tabbed
    sudo make install clean
fi

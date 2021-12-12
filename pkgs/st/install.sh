#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which st; then
    git clone "$GER_GITHUB/st.git" "build/st"
    cd build/st
    sudo make install clean
fi

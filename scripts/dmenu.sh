#!/usr/bin/env sh

if ! which dmenu; then
    git clone "$GER_GITHUB/st.git" "build/dmenu"
    cd build/st
    sudo make clean install
    cd ../..
fi

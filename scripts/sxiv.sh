#!/usr/bin/env sh

if ! which sxiv; then
    git clone "$GER_GITHUB/sxiv.git" "build/sxiv"
    cd build/sxiv
    sudo make install clean
    mkdir -p "$CONFIG_DIR/sxiv"
    cp -vr config/* "$CONFIG_DIR/sxiv/"
    cd ../..
fi

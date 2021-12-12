#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which dwmblocks; then
    git clone "$GER_GITHUB/dwmblocks.git" "build/dwmblocks"
    cd build/dwmblocks

    cp -r scripts/ ~/.config/dwmblocks/
    
    sudo make install clean

    add_autostart "dwmblocks &"
fi

#!/usr/bin/env sh

if ! [ -f /usr/include/gcolors.h ]; then
    git clone "$GER_GITHUB/gcolors.git" "build/gcolors"
    cd build/gcolors
    sudo ./install.sh

    add_autostart ". /opt/gcolors/colors_env.sh"
fi

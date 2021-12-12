#!/usr/bin/env sh

# check: gcolors
[ -f /usr/include/gcolors.h ] || ger_ins gcolors

if ! which sxiv; then
    git clone "$GER_GITHUB/sxiv.git" "build/sxiv"
    cd build/sxiv
    sudo make install clean
    mkdir -p "$CONFIG_DIR/sxiv"
    cp -vr config/* "$CONFIG_DIR/sxiv/"

    # set default mime types
    xdg-mime default sxiv.desktop "image/png"
    xdg-mime default sxiv.desktop "image/jpg"
    xdg-mime default sxiv.desktop "image/jpeg"

    mimes="bmp gif jpeg jpg png tiff x-bmp x-portable-anymap x-portable-bitmap x-portable-graymap x-tga x-xpixmap"
    echo "$mimes" | tr ' ' '\n' | while read item; do
	echo "Mime image/$item"
	xdg-mime default sxiv.desktop "item/$item"
    done
fi

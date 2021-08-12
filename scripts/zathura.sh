#!/usr/bin/sh

$PAC_INS zathura zathura-pdf-mupdf zathura-djvu

# copy configuration
mkdir -p "$CONFIG_DIR/zathura"
cp pkgs/zathura/zathurarc "$CONFIG_DIR/zathura"

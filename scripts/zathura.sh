#!/usr/bin/sh

pac_ins zathura zathura-pdf-mupdf zathura-djvu

# copy configuration
mkdir -p "$CONFIG_DIR/zathura"
cp pkgs/zathura/zathurarc "$CONFIG_DIR/zathura"

# MIME
xdg-mime default org.pwmt.zathura-pdf-mupdf.desktop application/pdf

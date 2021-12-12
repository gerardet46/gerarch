#!/usr/bin/sh

if which dmenukey > /dev/null; then
    opt="$(printf "de\nDret\nEsquerra" | dmenukey -p "Ratolí")"
else
    opt="$(printf "Dret\nEsquerra" | dmenu -p "Ratolí")"
fi

case "$opt" in
    Dret) xmodmap "$HOME/.config/mouse/mouse_dret" ;;
    Esquerra) xmodmap "$HOME/.config/mouse/mouse_esquerra" ;;
esac

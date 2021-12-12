#!/usr/bin/env sh

if which dmenukey > /dev/null; then
    opt="$(printf " npbox\n\n\n\n\nO\nX" | dmenukey -p "Spotify")"
else
    opt="$(printf "\n\n\n\nO\nX" | dmenu -p "Spotify")"
fi

case "$opt" in
    ) sp play ;;
    ) sp next ;;
    ) sp prev ; sp prev ;;
    ) sp prev ;;
    O) spotify ;;
    X) pkill spotify ;;
esac

#!/usr/bin/env sh

opt="$(printf "\n\n\n\nX" | dmenu -p "Spotify")"

case "$opt" in
    ) sp play ;;
    ) sp next ;;
    ) sp prev ; sp prev ;;
    ) sp prev ;;
    X) pkill spotify ;;
esac

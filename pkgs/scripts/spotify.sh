#!/usr/bin/env sh

opt="$(printf "\n\n\n" | dmenu -p "Spotify")"

case "$opt" in
    ) sp play ;;
    ) sp next ;;
    ) sp prev ; sp prev ;;
    ) sp prev ;;
esac

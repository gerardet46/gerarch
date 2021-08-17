#!/usr/bin/bash

e=$(echo -e "Atura\nReinicia\nBloqueja\nSurt" | dmenu -p "Sortida")

case "$e" in
    Atura) sudo poweroff ;;
    Reinicia) sudo reboot ;;
    Bloqueja) dm-tool lock ;;
    Surt) i3-msg exit ;;
    *) echo "Opció invàlida" ;;
esac

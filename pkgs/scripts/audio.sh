#!/usr/bin/sh

# llistar amb pactl list cards
opt1="I/O: Analog"
opt2="O: HDMI 2, I: Analog"

opt="$(printf "$opt1\n$opt2" | dmenu -p "Perfil d'audio")"

case "$opt" in
    "$opt1")
        pactl set-card-profile 0 output:analog-stereo+input:analog-stereo ;;
    "$opt2")
        pactl set-card-profile 0 output:hdmi-stereo-extra1+input:analog-stereo ;;
esac

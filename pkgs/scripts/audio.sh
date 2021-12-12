#!/usr/bin/sh

# llistar amb pactl list cards
opt1="I/O: Analog"
opt2="O: HDMI 2, I: Analog"

if which dmenukey > /dev/null; then
    opt="$(printf "m12\nMixer\n$opt1\n$opt2" | dmenukey -p "Perfil d'audio")"
else
    opt="$(printf "Mixer\n$opt1\n$opt2" | dmenu -p "Perfil d'audio")"
fi

case "$opt" in
    Mixer)
        st -e pulsemixer ;;
    "$opt1")
        pactl set-card-profile 0 output:analog-stereo+input:analog-stereo ;;
    "$opt2")
        pactl set-card-profile 0 output:hdmi-stereo-extra1+input:analog-stereo ;;
esac

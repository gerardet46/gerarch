#!/usr/bin/env sh

# FILES
pac_ins zip

# VIDEO
pac_ins mpv
pac_ins ffmpeg

# BLUETOOTH
pac_ins bluez bluez-utils pulseaudio-bluetooth
pac_ins blueman # front-end

# IMAGE
pac_ins gimp
pac_ins imagemagick

# SSH
pac_ins openssh
[ DISTRO = "artix"] && pac_ins "openssh-$INIT_SYS"

# APPEARANCE
pac_ins arandr lxappearance

# CALENDAR
pac_ins calcurse

# HUNSPELL
pac_ins hunspell hunspell-ca hunspell-es_es

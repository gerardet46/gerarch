#!/usr/bin/sh

if [ "$1" = "auto" ] ; then
    if [ "$(xrandr -q | grep HDMI2 | awk '{print $2}')" = "connected" ] ; then
        xrandr --output eDP1 --off --output DP1 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
	fi
	exit
fi

r=$(printf "Portàtil\nHDMI\nDoble\naltres" | dmenu -p "Entrada")

case "$r" in
    Portàtil) xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output HDMI2 --off ;;
    HDMI) xrandr --output eDP1 --off --output DP1 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off ;;
    Doble) xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal ;;
    altres) arandr ;;
    *) echo "No s'ha trobat $r (Portàtil|HDMI|Doble|altres)" ;;
esac


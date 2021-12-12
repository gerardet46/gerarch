#!/usr/bin/sh

options="Baixades\nTemp\nAltra"

[ -d /tmp/Baixades ] || mkdir -p /tmp/Baixades

if which dmenukey > /dev/null; then
    opt="$(echo "bta\n$options" | dmenukey -p "Baixa")"
else
    opt="$(echo "$options" | dmenu -p "Baixa")"
fi

[ -z "$opt" ] && exit

link="$(dmenu -p "Enllaç" <&-)"

[ -z "$link" ] && exit

case "$opt" in
    Baixades) save="$HOME/Baixades" ;;
    Temp) save="/tmp/Baixades" ;;
    Altra) save="$("$HOME/scripts/dbrowse.sh" "" "" -s)" ;; # TODO
esac

[ -d "$save" ] || exit

wget "$link" -P "$save"
xdg-open "$save/$(basename "$link")"

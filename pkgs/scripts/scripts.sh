#!/usr/bin/env sh

# tria l'script d'aquesta carpeta
cd "$HOME/scripts"
opts=""

for x in $(find . -type f -executable); do
    x="$(echo "$x" | sed 's/\.\///')"
    [ -z "$opts" ] && opts="$x" || opts="$opts\n$x"
done

sel="$(printf "$opts" | dmenu -p "Script a executar" | tr -d '\n')"
"$HOME/scripts/$sel"

#!/usr/bin/env sh

folder="$HOME/Imatges"
nom="Captura $(date +'%d-%m-%Y %H:%M:%S').png"
ruta="$folder/$nom"
temp="/tmp/captures/$nom"

# cream carpeta temporal si no existeix
[ -d "/tmp/captures" ] || mkdir -p /tmp/captures

# programa
opt="$(printf "Tot\nSelecció\nDesa tot\nDesa selecció\nMostra tot\nMostra selecció" | dmenu -p "Captura")"

[ -d "$folder" ] && mkdir -p "$folder"

temp() {
    xclip -selection clipboard -t image/png -o > "$temp"
}

cmd="$(echo "$opt" | sed "s/[0-9]//g")"
_sleep="$(echo "$opt" | sed "s/[^0-9]//g")"

[ -z "$_sleep" ] && _sleep="0"

case "$cmd" in
    "Tot")
        maim -u -q -d "$_sleep" | xclip -selection clipboard -t image/png -i
        temp
        notify-send -i "$temp" "Captura copiada"
        ;;
    "Selecció")
        maim -s -u -q -d "$_sleep" | xclip -selection clipboard -t image/png -i
        temp
        notify-send -i "$temp" "Selecció copiada"
        ;;
    "Desa tot") 
        maim -u -q -d "$_sleep" "$ruta"
        notify-send -i "$ruta" "Captura desada" "$ruta"
        ;;
    "Desa selecció")
        maim -s -u -q -d "$_sleep" "$ruta"
        notify-send -i "$ruta" "Selecció desada" "$ruta"
        ;;
    "Mostra tot") 
        maim -u -q -d "$_sleep" | xclip -selection clipboard -t image/png -i
        temp
        sxiv "$temp"
        ;;
    "Mostra selecció")
        maim -s -u -q -d "$_sleep" | xclip -selection clipboard -t image/png -i
        temp
        sxiv "$temp"
        ;;
esac

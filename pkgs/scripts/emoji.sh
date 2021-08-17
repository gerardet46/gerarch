#!/bin/sh

file="$HOME/scripts/emoji_list"
list=$(sed 's/|\:[^\:]\+:|/ /' "$file" | tr '[:upper:]' '[:lower:]')

emo="$(echo "$list" | dmenu -p "Copiar emoji" -l 20 | awk '{print $1}')"
echo "$emo" | tr -d '\n' | xclip -selection clipboard
xdotool type "$emo"
#pgrep -x dunst >/dev/null && notify-send "$(xclip -o -selection clipboard) s'ha copiat."

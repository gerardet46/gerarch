#!/usr/bin/env sh

text=""
for x in $(pgrep ""); do
    name="$(ps -p "$x" -o comm=)"
    [ -z "$text" ] && text="$name"
    text="$text\n$name";
done

text="$(echo "$text" | sort | uniq)"

proc="$(echo "$text" | dmenu -l 20 -p "Kill proc")"
kill $(pidof "$proc")

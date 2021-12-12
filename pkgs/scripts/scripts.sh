#!/usr/bin/env sh

run() {
    a="$HOME/scripts/$1"
    [ -f "$a" ] && "$a" && exit
}

run_lower() {
    # si l'opció és Audio, executarà audio.sh
    run "$(echo "$1" | tr '[:upper:]' '[:lower:]').sh"
}

opt="Ratolí\nMonitors\nAudio\nCaptura\nTema\nSpotify\nDbrowse\nKill\nTanca"
opt_keys="rmactsdkx"

if which dmenukey > /dev/null; then
    s="$(printf "$opt_keys\n$opt" | dmenukey -p "Script")"
else
    s="$(printf "$opt" | dmenu -p "Script")"
fi

# noms distints de item i fitxer
case "$s" in
    Ratolí) run mouse.sh ;;
    Tema)   run theme.sh ;;
    Tanca)  run power.sh ;;
esac

# pes que són iguals
run_lower "$s"


#####################
# ANTIC SCRIPT (MIRAVA ES ARXIUS)

# tria l'script d'aquesta carpeta
#cd "$HOME/scripts"
#opts=""

#for x in $(find . -type f -executable); do
#    x="$(echo "$x" | sed 's/\.\///')"
#    [ -z "$opts" ] && opts="$x" || opts="$opts\n$x"
#done

#sel="$(printf "$opts" | dmenu -p "Script a executar" | tr -d '\n')"
#"$HOME/scripts/$sel"

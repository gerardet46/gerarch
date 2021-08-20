#!/usr/bin/env sh

###################################
# SELECT PROGRAMS HERE

# uncomment script name to be installed
# comments starting with "BE" means that are included in `base-ext`
# comments starting with "SR" means that are compiled from source

####################################
# BASE
ger_ins "base-min"        # aur, arch mirrors, pacman-contrib, fakeroot, dash, bashrc, man, wget, curl
#ger_ins "base-ext"        # (for desktop) base-min + xorg (complete), xdg-utils, backlight, feh (wallpaper), redshift, mouse, fonts, support for emoji

# COMPOSITORS:
#ger_ins "xcompmgr"        # a basic compositor
#ger_ins "picom"           # a bloated compositor

# UTILITIES
#ger_ins "zsh"             # the best POSIX-compliant shell
#ger_ins "st"              # (BE, SR) the best terminal
#ger_ins "dmenu"           # (BE, SR) the menu
#ger_ins "scripts"         # (BE) scripts (installs dmenu if not installed)
#ger_ins "dunst"           # for notifications
#ger_ins "slock"           # (BE, SR) the locker
#ger_ins "tabbed"          # needed for nnn preview
#ger_ins "nnn"             # (SR) file manager (includes tabbed)
#ger_ins "emacs"           # the best OS
#ger_ins "nvim"            # the best text editor
#ger_ins "zathura"         # vim pdf-viewer
#ger_ins "sxiv"            # (SR) the image viewer

# BIG SOFTWARE
#ger_ins "latex"           # math staff
#ger_ins "spotify"         # spotify with useful `sp` script

# WINDOW MANAGERS:
#ger_ins "i3"              # manual WM

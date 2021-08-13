#!/usr/bin/env sh

pac_ins xcompmgr

# xcompmgr
printf "\nSection \"Extensions\"\n\tOption \"Composite\" \"true\"\nEndSection" | sudo tee -a /etc/X11/xorg.conf 
add_to_xinit "xcompmgr &"

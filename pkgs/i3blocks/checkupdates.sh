#!/usr/bin/env sh

n_ups=$(checkupdates | wc -l)
aur_ups=$(trizen -Qu | wc -l)
tot_ups=$(( $n_ups + $aur_ups ))

[ $aur_ups -ne 0 ] && prefix="(AUR) "
[ $tot_ups -ne 0 ] && echo " $prefix$tot_ups"

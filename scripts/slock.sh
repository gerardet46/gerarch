#!/usr/bin/env sh

if ! which slock ; then
    git clone "$GER_GITHUB/slock.git" "build/slock"
    cd build/slock
    sudo make install clean
    cd ../..

    # intall xautolock
    pac_ins xautolock
    add_autostart "xautolock -time 10 -locker slock &"
fi

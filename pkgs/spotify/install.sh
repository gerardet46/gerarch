#!/usr/bin/env sh

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
aur_ins spotify
sudo cp -v pkgs/spotify/sp.sh /usr/bin/sp
sudo chmod +x /usr/bin/sp

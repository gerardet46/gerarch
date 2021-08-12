#!/usr/bin/env sh

git clone "$GER_GITHUB/st.git" "st"
cd st
sudo make clean install
cd ..

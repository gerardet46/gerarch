#!/usr/bin/env sh

# dunst
cp -v $HOME/.config/dunst/dunstrc pkgs/dunst/

# emacs
cp -v -r $HOME/.emacs.d/snippets/ pkgs/emacs/
cp -v $HOME/.emacs.d/init.el pkgs/emacs/

# i3
cp -v $HOME/.config/i3/config pkgs/i3/

# i3blocks
cp -v -r $HOME/.config/i3blocks/* pkgs/i3blocks/

# nvim
cp -v $HOME/.config/nvim/init.vim pkgs/nvim

# scripts
cp -v -r $HOME/scripts/* pkgs/scripts/

# sxiv
cp -v -r $HOME/.config/sxiv/* pkgs/sxiv/

# zathura
cp -v $HOME/.config/zathura/zathurarc pkgs/zathura/

# zsh
cp -v $HOME/.config/zsh/zshrc pkgs/zsh/

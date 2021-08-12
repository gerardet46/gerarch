#!/usr/bin/env sh

$PAC_INS zsh

# copy config
mkdir -p "$CONFIG_DIR/zsh"
cp pkgs/zsh/zshrc "$CONFIG_DIR/zsh/zshrc"
ln -f "$CONFIG_DIR/zsh/zshrc" "$HOME/.zshrc"

# make it default
echo "Enter password to change the default shell to ZSH"
chsh /bin/zsh

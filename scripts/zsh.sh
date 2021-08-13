#!/usr/bin/env sh

pac_ins zsh

# copy config
mkdir -p "$CONFIG_DIR/zsh"
sed "s/^AUR\\_HELPER.*\$/AUR\\_HELPER\\=\\\"$AUR_HELPER\\\"/" pkgs/zsh/zshrc > "$CONFIG_DIR/zsh/zshrc"
ln -f "$CONFIG_DIR/zsh/zshrc" "$HOME/.zshrc"

# make it default
echo "Enter password to change the default shell to ZSH"
chsh -s /bin/zsh

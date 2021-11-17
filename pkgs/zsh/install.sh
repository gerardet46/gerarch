#!/usr/bin/env sh

if ! which zsh; then
    # copy config
    mkdir -p "$CONFIG_DIR/zsh"
    sed "s/^AUR\\_HELPER.*\$/AUR\\_HELPER\\=\\\"$AUR_HELPER\\\"/" pkgs/zsh/zshrc > "$CONFIG_DIR/zsh/zshrc"
    ln -f "$CONFIG_DIR/zsh/zshrc" "$HOME/.zshrc"

    # make it default
    chsh -s /bin/zsh
fi

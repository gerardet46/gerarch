#!/usr/bin/env sh

if ! which nnn; then
    # cp/mv improved
    if ! which cpg; then
	cd build
	wget http://ftp.gnu.org/gnu/coreutils/coreutils-8.32.tar.xz
	tar xJf coreutils-8.32.tar.xz
	cd coreutils-8.32/
	wget https://raw.githubusercontent.com/jarun/advcpmv/master/advcpmv-0.8-8.32.patch
	patch -p1 -i advcpmv-0.8-8.32.patch
	./configure
	make

	sudo mv ./src/mv /usr/local/bin/mvg
	sudo mv ./src/cp /usr/local/bin/cpg

	# clean
	rm -f coreutils-8.32.tar.xz
	cd ../..
    fi

    # tabbed
    which tabbed > /dev/null || ger_ins tabbed

    # drag and drop and pmount
    aus_ins pmount dragon-drag-and-drop

    # nnn
    git clone "$GER_GITHUB/nnn.git" "build/nnn"
    cd build/nnn
    make O_GISTATUS=1 O_NOMOUSE=1
    sudo make install install-desktop clean
    
    # configs and mime
    [ -d "$CONFIG_DIR/nnn" ] && rm -rf "$CONFIG_DIR/nnn"
    cp -rv config/ "$CONFIG_DIR/nnn"

    xdg-mime default nnn.desktop inode/directory
    cd ../..
fi

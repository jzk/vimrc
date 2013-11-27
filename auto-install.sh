#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[[ -e "$VIMHOME" ]] && mv $VIMHOME $VIMHOME.bk

git clone https://github.com/jzk/vimrc.git "$VIMHOME"
cd "$VIMHOME"
git submodule update --init

./install-vimrc.sh

echo "Jzk's vimrc is installed."

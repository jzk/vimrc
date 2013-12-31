#!/bin/bash
VIMHOME="`pwd`"
cd ~
[[ -e .vimrc ]] && mv .vimrc .vimrc_origin
[[ -e .gvimrc ]] && mv .gvimrc .gvimrc_origin
ln -sf $VIMHOME/vimrc .vimrc
ln -sf $VIMHOME/gvimrc .gvimrc
#vim +BundleInstall +qall

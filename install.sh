#!/bin/sh

git submodule update --init
ln -s $PWD/.vim/vimrc $HOME/.vimrc
vim +BundleInstall +qall

#!/bin/sh

  echo === Checking out vundle
  git submodule update --init

  echo === Linking vim directories
  ln -s $PWD/.vim/vimrc $HOME/.vimrc

  echo === Vundling
  vim +BundleInstall +qall

  echo === Done
fi

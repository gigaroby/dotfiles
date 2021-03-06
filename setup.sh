#!/usr/bin/env bash

NVIM_DIR="$HOME/.config/nvim"
rm -rf $NVIM_DIR
mkdir -p $NVIM_DIR

rm -rf $HOME/.bin
mkdir -p $HOME/.bin

stow -t $HOME git
stow -t $HOME/.config/fish fish
stow -t $HOME/.config/nvim nvim
stow -t $HOME tmux
stow -t $HOME/.bin bin

echo "downloading vundle"
mkdir -p $NVIM_DIR/bundle
git clone --depth=1 https://github.com/VundleVim/Vundle.vim $NVIM_DIR/bundle/Vundle.vim
nvim +PluginInstall

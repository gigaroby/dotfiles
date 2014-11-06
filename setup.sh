#!/usr/bin/env bash

stow -t $HOME git
stow -t $HOME zsh
stow -t $HOME vim
stow -t $HOME tmux

echo "downloading Vundle.git"
VIM_FOLDER=$HOME/.vim
rm -rf $VIM_FOLDER
mkdir -p $VIM_FOLDER/bundle
git clone https://github.com/gmarik/Vundle.vim $VIM_FOLDER/bundle/Vundle.vim
vim +PluginInstall +qall

echo "downloading oh-my-zsh"
OH_MY_ZSH=$HOME/.oh-my-zsh
rm -rf $OH_MY_ZSH
git clone https://github.com/robbyrussell/oh-my-zsh.git $OH_MY_ZSH

echo "downloading goproj"
GOPROJ_FOLDER=$HOME/.goproj
git clone https://github.com/gigaroby/goproj $GOPROJ_FOLDER

#!/usr/bin/env bash
# Install roberto's vimrc

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"
    if [ -e "${target}" ] && [ ! -L "${target}" ]; then
        mv $target $target.df.bak
    fi
        ln -sf ${source} ${target}
}

# VIM stuff
dotvim=$HOME/.vim
mkdir -p $dotvim/bundle
rm -rf $dotvim/bundle/*
git clone https://github.com/gmarik/vundle.git $dotvim/bundle/vundle
link_file _vimrc
vim +BundleInstall +qall

# Tmux config
link_file _tmux.conf

# Oh-my-zsh
rm -rf $HOME/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
link_file _zshrc



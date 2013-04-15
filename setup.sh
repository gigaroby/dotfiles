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

link_file _vimrc

mkdir -p bundle
rm -rf bundle/*
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim +BundleInstall +qall


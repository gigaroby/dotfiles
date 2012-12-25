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

git submodule update --init --recursive
git submodule foreach --recursive git pull origin master

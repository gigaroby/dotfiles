#!/usr/bin/env bash
# Install roberto's vimrc

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"
    if [ -e "${target}" ]; then
        mv $target $target.bak
    fi
        ln -sf ${source} ${target}
}

link_file vimrc

git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
git submodule foreach git submodule init
git submodule foreach git submodule update

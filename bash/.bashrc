#!/usr/bin/env bash

# bash-it stuff
export BASH_IT="/home/roberto/.bash_it"
export BASH_IT_THEME='pure'
# Don't check mail when opening terminal.
unset MAILCHECK
# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
source $BASH_IT/bash_it.sh

alias vim=nvim
export GOPATH="$HOME/projects/go"
export PATH="$HOME/.go/bin:$PATH"


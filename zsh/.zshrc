ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

platform=`uname`

case "$platform" in
    "Linux")
        plugins=(git git-flow pip python archlinux systemd)
        ;;
    "Darwin")
        plugins=(git git-flow pip python brew)
        ;;
esac

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/.goproj/bin
export PATH=$PATH:$HOME/.goutils/bin

export EDITOR="vim"

alias ls="ls --color=always"
alias cname="dig +short CNAME"
alias a="dig +short A"

alias go="goproj -x -- go"
alias vim="goproj -x vim"
alias goconvey="goproj -x goconvey"
export GOPATH=$HOME/projects/gopath

case "$platform" in
    "Linux")
        alias gvim="goproj -x gvim"
        ;;
    "Darwin")
        export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
        export PATH=$PATH:$HOME/.mvim
        alias mvim="goproj -x mvim"
        ;;
esac

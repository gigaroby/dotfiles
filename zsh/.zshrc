ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

platform=`uname`
if [ $platform=="Linux" ]; then
    plugins=(git git-flow pip python archlinux systemd)
else
    plugins=(git git-flow pip python brew)
fi

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/.goproj/bin
export PATH=$PATH:$HOME/.goutils/bin

export EDITOR="vim"

alias cname="dig +short CNAME"
alias a="dig +short A"

alias go="goproj -x -- go"
alias vim="goproj -x vim"
alias goconvey="goproj -x goconvey"
export GOPATH=$HOME/projects/gopath

if [ $platform=="Linux" ]; then
    alias gvim="goproj -x gvim"
else
    export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
    export PATH=$PATH:$HOME/.mvim
    alias mvim="goproj -x mvim"
fi

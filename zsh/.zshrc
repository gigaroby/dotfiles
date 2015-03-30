ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

platform="$(uname)"

case "$platform" in
    "Linux")
        plugins=(git git-flow pip python archlinux systemd)
        GOPATH_DIR="go"
        ;;
    "Darwin")
        plugins=(git git-flow pip python brew)
        GOPATH_DIR="gopath"
        ;;
esac

export GOPATH="$HOME/projects/$GOPATH_DIR"


# add gopath binaries to path
export PATH="$PATH:$GOPATH/bin"
# add go vim utilites to path
export PATH=$PATH:$HOME/.goutils/bin

export EDITOR="vim"

alias ls="ls --color=always"
alias cname="dig +short CNAME"
alias a="dig +short A"

case "$platform" in
    "Linux")
        ;;
    "Darwin")
        # add updated coreutils to path
        export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
        # add mvim to path
        export PATH=$PATH:$HOME/.mvim
        # golang
        export PATH="$HOME/projects/go:$PATH"
        # packer
        export PATH=$PATH:/usr/local/bin/packer
        source /usr/local/bin/virtualenvwrapper.sh
        ;;
esac

source $ZSH/oh-my-zsh.sh

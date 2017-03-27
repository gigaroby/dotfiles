switch (uname)
    case Darwin
        set -x PATH /usr/local/opt/coreutils/libexec/gnubin $PATH /usr/local/sbin
        set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
    case Linux
end

set -x GOPATH $HOME/projects/go
set -x PATH $PATH $HOME/.go/bin $GOPATH/bin

set -x EDITOR vim

alias vim nvim

source $HOME/.config/fish/fishenv.fish

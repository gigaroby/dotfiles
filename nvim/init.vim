set nocompatible " Don't be compatible with vi
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/')

"let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" Bundle 'tomtom/tlib_vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

" vim-go provides go snippets
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on

let mapleader=","
" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w


syntax enable

" Change color scheme to something usable
set background=dark 
colorscheme slate

" ignore files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" move between panels without control-w first
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" set file encodings
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" highlight tabs
set list
set listchars=tab:>-
" set file options
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround " rounds indent to a multiple of shiftwidth


au FileType yaml set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType json set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" for go, use tabs and don't highlight them
au FileType go set noexpandtab nolist


" don't outdent hashes
inoremap # # 

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
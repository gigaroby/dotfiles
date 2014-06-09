set nocompatible " Don't be compatible with vi
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage vundle
Plugin 'gmarik/Vundle.vim'

" Bundle 'tomtom/tlib_vim'
Plugin 'scrooloose/syntastic'
Plugin 'jnwhiteh/vim-golang'
Plugin 'Townk/vim-autoclose'
Plugin 'dgryski/vim-godef'
Plugin 'derekwyatt/vim-fswitch'

call vundle#end()

" ===============================================
" Basic settings
" ===============================================
" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

filetype on
filetype plugin on
filetype plugin indent on

syntax enable

" Change color scheme
" to something usable
set background=dark
colorscheme slate
" change really ugly autocomplete
" menu color
highlight Pmenu ctermfg=15 ctermbg=8
highlight PmenuSel ctermfg=16 ctermbg=7

set number
set numberwidth=1

set title

set wildmenu
set wildmode=full
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nmap <silent> <F4> :FSHere<CR>

""" Moving Around/Editing
set virtualedit=block " Let cursor move past the last char in <C-v> mode
set scrolloff=3 " Keep 3 context lines above and below the cursor
set backspace=2 " Allow backspacing over autoindent, EOL, and BOL
set showmatch " Briefly jump to a paren once it's balanced
set nowrap " don't wrap text
set linebreak " don't wrap textin the middle of a word
set autoindent " always set autoindenting on
set smartindent " use smart indent if there is no indent file
set tabstop=4 " <tab> inserts 4 spaces
set shiftwidth=4 " but an indent level is 2 spaces wide.
set softtabstop=4 " <BS> over an autoindent deletes both spaces.
set expandtab " Use spaces, not tabs, for autoindent/tab key.
set shiftround " rounds indent to a multiple of shiftwidth
set matchpairs+=<:> " show matching <> (html mainly) as well
set incsearch " incremental search

" don't outdent hashes
inoremap # #

au FileType go au BufWritepre <buffer> Fmt

let g:syntastic_cpp_compiler="clang++"
let g:syntastic_cpp_compiler_options="-std=c++11 -stdlib=libc++"

" watch for changes in vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

set nocompatible " Don't be compatible with vi
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let vundle manage vundle
Bundle 'gmarik/vundle'

Bundle 'tomtom/tlib_vim'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jnwhiteh/vim-golang'

let mapleader="," " change the leader to be a comma vs slash

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

" ===============================================
" Basic settings
" ===============================================
filetype on
filetype plugin indent on

syntax enable

set background=dark
colorscheme solarized

set number
set numberwidth=1

set title

set wildmenu
set wildmode=full
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

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

" let g:pyflakes_use_quickfix=0

" au FileType python set omnifunc=pythoncomplete#Complete
" let g:SuperTabDefaultCompletionType="context"

set completeopt=menuone,longest,preview

" py << EOF
" import os.path
" import sys
" import vim
" if 'VIRTUAL_ENV' in os.environ:
"     project_base_dir=os.environ['VIRTUAL_ENV']
"     sys.path.insert(0, project_base_dir)
"     activate_this=os.path.join(project_base_dir, 'bin/activate_this.py')
"     execfile(activate_this, dict(__file__=activate_this))
" EOF

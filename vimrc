" Author: Hrishabh Rajput
" Path: $HOME/.vimrc

syntax enable       " enable syntax processing
colors kuroi
set background=dark " just for kuroi colorscheme
set t_Co=256

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB when editing
set expandtab       " tabs are spaces
set autoindent      " applies previous TAB
set smartindent     " especially for C
set shiftwidth=4    " solves problems with tabs

set number relativenumber       " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set showmatch                   " highlight matching brackets
set wildmode=longest,list,full  " enable autocomplete
set splitbelow splitright       " splits new window at bottom or right

set incsearch                   " search as characters are entered
set backspace=indent,eol,start  " make backspaces work correctly
set cpo-=$
set nocp

set nocompatible

set encoding=utf-8
set fileencoding=utf-8

syntax enable

filetype indent plugin on
syntax on
set tabstop=2
set softtabstop=0
set shiftwidth=2
set autoindent
set expandtab
set shiftround
set smarttab

set incsearch
set hlsearch
set ignorecase

set showmode
set showcmd
set modeline
set ruler
set title
set number
set relativenumber
set scrolloff=5

map <Up> <Nop>
imap <Up> <Nop>
map <Down> <Nop>
imap <Down> <Nop>
map <Left> <Nop>
imap <Left> <Nop>
map <Right> <Nop>
imap <Right> <Nop>

nmap <C-L><C-L> :set rnu!<CR>

" ---------
" Peut-être
" ---------
"
" set colorcolumn=10
"
" set hidden
" Cache les buffers > ouvrir un nouveau fichier sans avoir sauvegardé
"
" set cursorline
"
" set showmatch
" Surligne les parenthèses correspondantes

set clipboard=unnamed
" if has("unnamedplus")
"   set clipboard+=unnamedplus
" endif

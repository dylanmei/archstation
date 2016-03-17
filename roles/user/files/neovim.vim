" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'chase/vim-ansible-yaml'

call plug#end()

syntax on
set encoding=utf-8

let mapleader=" "
set noswapfile
set undofile
set undodir=~/.config/nvim/undo

set autoread
set hidden
set incsearch
set smartcase
set hlsearch
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
nnoremap <esc><esc> :nohl<cr>

command! W w
command! Q q

vnoremap < <gv
vnoremap > >gv|

let g:netrw_liststyle=3

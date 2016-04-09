" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-janah'

Plug 'scrooloose/syntastic'
Plug 'chase/vim-ansible-yaml'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'jonhiggs/vim-readline'

call plug#end()

syntax on
set encoding=utf-8
"set t_Co=256

let mapleader=" "
set noswapfile
set undofile
set undodir=~/.config/nvim/undo
set clipboard+=unnamedplus

set autoread
set hidden
set incsearch
set smartcase
set hlsearch
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
nnoremap <esc><esc> :nohl<cr>

autocmd ColorScheme janah highlight Normal ctermbg=233
colorscheme janah

" lightline
set laststatus=2
let g:lightline = {
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '·', 'right': '·'}
  \ }

set list " show invisible characters
set listchars=" " reset the listchars
set listchars=tab:\ \ " a tab should display as " "
" show trailing spaces as dots
set listchars+=trail:· 
" the character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=extends:> 
" the character to show in the first column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<

" fml
command! W w
command! Q q

" indentation in visual mode
vnoremap < <gv
vnoremap > >gv|

" toggle number/relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  elseif (&number == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" netrw
let g:netrw_liststyle=3

" ctrl-p and ag
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<Leader>p'
nnoremap <Leader>p :CtrlP<cr>
nnoremap <Leader>b :CtrlPBuffer<cr>
nnoremap <Leader>m :CtrlPMRU<cr>

let g:ag_working_path_mode="r"
nnoremap <Leader>g :Ag

" override tabs and spaces
au FileType make set softtabstop=4 tabstop=4 shiftwidth=4 noexpandtab
au FileType go   set softtabstop=4 tabstop=4 shiftwidth=4 noexpandtab


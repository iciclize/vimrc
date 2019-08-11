" Install vim-plug if it isn't installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" plugins here
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'thinca/vim-quickrun'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()

let g:closetag_filenames = '*.html,*.vue,*.js'
let g_closetag_filetypes = 'html,vue,js'

let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
set laststatus=2

set fenc=utf-8
set autoread
set hidden
set showcmd

set number
set cursorline
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
syntax enable
set list listchars=tab:\▶\-
let _curfile=expand("%r")
if _curfile == 'Makefile'
  set noexpandtab
else
  set expandtab
endif
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

colorscheme delek

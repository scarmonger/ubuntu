" Set up Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nnoremap ; :
vnoremap ; :

set encoding=utf-8
set expandtab tabstop=4 shiftwidth=4
set ignorecase smartcase
set hlsearch
set incsearch
set cursorline
set scrolloff=12

" Navigation shorts
nmap <silent> <C-k> : wincmd k<CR>
nmap <silent> <C-j> : wincmd j<CR>
nmap <silent> <C-h> : wincmd h<CR>
nmap <silent> <C-l> : wincmd l<CR>

syntax on
set clipboard=unnamedplus
let mapleader = " "
set number
set relativenumber

" Mapping to reload configuration
nmap <leader>so :source $HOME/.vimrc<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

"colorscheme evening
colorscheme desert
":colorscheme [space] [ctrl-D] -> see list of colorscheme available

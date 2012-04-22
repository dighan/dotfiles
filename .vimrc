" global
let mapleader = ' '
syntax enable
set hidden
set number
set showmatch
set hlsearch
set ignorecase
set smartcase
set ruler
set background=dark
colorscheme solarized

" memory
set history=1000
set undolevels=1000
set maxmem=2000000
set maxmemtot=2000000

" encoding
set ffs=unix
set enc=utf-8

" indentation
set autoindent
set smartindent
set nowrap

" tabs
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

" completion
set wildmenu
set wildmode=list:longest

" switch between vertical splits
map <Tab> <C-w>

" nerd_commenter
filetype plugin on
map <C-c> <leader>c<space>

" fuzzyfinder
noremap <unique> <S-f> :FufFile<CR>

" backup/swap
set backup
set writebackup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" remove trailing whitespaces
autocmd BufWrite * silent! %s/s+$//
autocmd BufWrite !Makefile :%s/ /    /g

" syntax
if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    au BufNewFile,BufRead *.php set ft=php
    au BufNewFile,BufRead Makefile set noexpandtab
    au BufNewFile,BufRead *.as set ft=actionscript
    au BufNewFile,BufRead *.mxmlc set ft=mxmlc
    au BufNewFile,BufRead *.json set ft=json
    au BufNewFile,BufRead *.js set ft=javascript
    au BufNewFile,BufRead *.xml set ft=xml
endif 

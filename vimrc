set nocompatible

" color
set t_Co=256
syntax on
color elflord
hi LineNr ctermfg=lightcyan
hi LineNrAbove ctermfg=gray
hi LineNrBelow ctermfg=gray

" number
set rnu
set nu

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

" tab & indent
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent

" window
set splitbelow
set splitright

" filetype
filetype plugin indent on

" line
set noru
set wildmenu

" keymaps
let mapleader = " "
inoremap <C-U> <C-G>u<C-U>
nnoremap Q gq
nnoremap <C-S> :wall<CR>
nnoremap <Leader>o :Exp<CR>

autocmd FileType make setlocal noexpandtab

" restore-cursor last-position-jump
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" others
set scrolloff=10
set encoding=utf-8
set mouse=a
set noerrorbells
set backspace=indent,eol,start
set noesckeys
set noswapfile
set nrformats-=octal
set history=200
set autowriteall
packadd! matchit

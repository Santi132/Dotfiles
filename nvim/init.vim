set nocompatible              " be iMproved, required
call plug#begin()

Plug 'VundleVim/Vundle.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'w0ng/vim-hybrid'

Plug 'morhetz/gruvbox'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'scrooloose/nerdcommenter'

Plug 'nanotech/jellybeans.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'chriskempson/vim-tomorrow-theme'

Plug 'scrooloose/syntastic'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tmhedberg/SimpylFold'

Plug 'rakr/vim-one'

Plug 'rakr/vim-colors-rakr'

Plug 'arcticicestudio/nord-vim'

Plug 'jceb/vim-orgmode'

Plug 'tpope/vim-speeddating'

Plug 'danilo-augusto/vim-afterglow'

Plug 'whatyouhide/vim-gotham'

Plug 'cocopon/iceberg.vim'

Plug 'jacoborus/tender.vim'

Plug 'NLKNguyen/papercolor-theme'

Plug 'exitface/synthwave.vim'

Plug 'haishanh/night-owl.vim'

Plug 'agreco/vim-citylights'

Plug 'nightsense/stellarized'

Plug 'nightsense/snow'

Plug 'Jimeno0/vim-chito'

Plug 'tyrannicaltoucan/vim-quantum'

Plug 'kaicataldo/material.vim'

Plug 'ajmwagar/vim-deus'

Plug 'tomasr/molokai'

Plug 'koirand/tokyo-metro.vim'

Plug 'BrainDeath0/Hypsteria'

Plug 'ntk148v/vim-horizon'

call plug#end()


let g:airline_powerline_fonts=1
set laststatus=2
"set t_Co=256
let g:airline_theme='ayu_mirage'
let g:airline#extensions#tabline#enabled = 1

" Set numbered lines
set nu
set relativenumber
set autoindent smarttab textwidth=140
set expandtab 
set softtabstop=0
set shiftwidth=4
set tabstop=4

" Set the colorscheme
set termguicolors
let g:gruvbox_italic=1
let g:quantum_black=1
let g:quantum_italics=1
colorscheme tokyo-metro
set background=dark

"press leader esc to take off highlighting
nnoremap <Esc> :noh<return><esc>

let python_highlight_all=1
syntax enable

" remap the escap in terminal 
tnoremap <Esc> <C-\><C-n>

" remapping the leader key to comma
let mapleader = ","

" remapping the localleader key to backslash
let maplocalleader = "\\"

"remapping CtrlP my usage
nnoremap <space>f :CtrlP<CR>

"remmapping CtrlPBuffer cuz yeah
nnoremap <space>b :CtrlPBuffer<CR>

autocmd TermOpen * set bufhidden=hide
au TermOpen * setlocal nonumber norelativenumber

" Dont like pressing enter
let g:netrw_silent = 1

nnoremap <space>j <c-w>j
nnoremap <space>h <c-w>h
nnoremap <space>k <C-w>k
nnoremap <space>l <c-w>l

"enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.org
	\ set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab autoindent textwidth=140

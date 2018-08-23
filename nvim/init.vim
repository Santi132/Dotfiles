set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'w0ng/vim-hybrid'

Plugin 'morhetz/gruvbox'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'nanotech/jellybeans.vim'

Plugin 'ryanoasis/vim-devicons'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'scrooloose/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tmhedberg/SimpylFold'

Plugin 'hdima/python-syntax'

Plugin 'rakr/vim-one'

Plugin 'rakr/vim-colors-rakr'

Plugin 'arcticicestudio/nord-vim'

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-speeddating'

Plugin 'danilo-augusto/vim-afterglow'

Plugin 'whatyouhide/vim-gotham'

Plugin 'cocopon/iceberg.vim'

Plugin 'jacoborus/tender.vim'

Plugin 'NLKNguyen/papercolor-theme'

Plugin 'exitface/synthwave.vim'

Plugin 'haishanh/night-owl.vim'

Plugin 'agreco/vim-citylights'

Plugin 'nightsense/stellarized'

Plugin 'nightsense/snow'

Plugin 'Jimeno0/vim-chito'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'kaicataldo/material.vim'

Plugin 'ajmwagar/vim-deus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts=1
set laststatus=2
set t_Co=256
let g:airline_theme='quantum'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Set numbered lines
set nu
set relativenumber
"set autoindent smarttab textwidth=140
"set expandtab 
"set softtabstop=0
"set shiftwidth=4
"set tabstop=4
set noet ci pi sts=0 sw=4 ts=4

" Set the colorscheme
set termguicolors
let g:gruvbox_italic=1
let g:quantum_black=1
let g:quantum_italics=1
colorscheme quantum
set background=dark

"press leader esc to take off highlighting
nnoremap <Esc> :noh<return><esc>

let python_highlight_all=1
syntax enable

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

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

" Set linenumbers in nerdtree
let NERDTreeShowLineNumbers=1

nnoremap <space>j <c-w>j
nnoremap <space>h <c-w>h
nnoremap <space>k <C-w>k
nnoremap <space>l <c-w>l

"enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py setlocal noet ci pi sts=0 sw=4 ts=4

au BufNewFile,BufRead *.org
	\ set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab autoindent textwidth=140

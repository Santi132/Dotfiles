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

Plugin 'tpope/vim-fugitive'

Plugin 'w0ng/vim-hybrid'

Plugin 'morhetz/gruvbox'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'nanotech/jellybeans.vim'

Plugin 'ryanoasis/vim-devicons'

Plugin 'edkolev/promptline.vim'

Plugin 'sjl/badwolf'

Plugin 'dracula/vim'

Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'scrooloose/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tmhedberg/SimpylFold'

Plugin 'hdima/python-syntax'

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
let g:airline_theme='base16_google'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Set numbered lines
set nu

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab autoindent

" Set the colorscheme
set background=dark
set termguicolors
let g:gruvbox_italic=1
colorscheme default

let python_highlight_all=1
syntax on

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" remap the escap in terminal 
tnoremap <Esc> <C-\><C-n>

" remapping the leader key to comma
let mapleader = ","

"remapping CtrlP my usage
nnoremap <space>ff :CtrlP<CR>

"remmapping CtrlPBuffer cuz yeah
nnoremap <space>bb :CtrlPBuffer<CR>

autocmd TermOpen * set bufhidden=hide

" Dont like pressing enter
let g:netrw_silent = 1

nnoremap <space>j <c-w>j
nnoremap <space>h <c-w>h
nnoremap <space>k <C-w>k
nnoremap <space>l <c-w>l

"enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py
    \ set textwidth = 79
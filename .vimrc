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

"Plugin 'sjl/badwolf'

"Plugin 'dracula/vim'

"Plugin 'chriskempson/vim-tomorrow-theme'

Plugin 'scrooloose/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tmhedberg/SimpylFold'

"Plugin 'hdima/python-syntax'

"Plugin 'altercation/vim-colors-solarized'

Plugin 'fneu/breezy'

Plugin 'rakr/vim-one'

Plugin 'arcticicestudio/nord-vim'

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-speeddating'

Plugin 'chriskempson/base16-vim'

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
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Set numbered lines
set nu
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4 smarttab autoindent textwidth=120
"set expandtab

" Set the colorscheme
let g:gruvbox_italic=1
colorscheme hybrid
set background=dark

"press leader esc to take off highlighting
nnoremap <Esc> :noh<return><esc>

let python_highlight_all=1
syntax enable

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" remapping the leader key to comma
let mapleader = ","

"remapping CtrlP my usage
nnoremap <space>f :CtrlP<CR>

"remmapping CtrlPBuffer cuz yeah
nnoremap <space>b :CtrlPBuffer<CR>

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

"au BufNewFile,BufRead *.py
    "\ set textwidth=80

"au BufNewFile,BufRead *.org
    "\ set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab autoindent textwidth=140

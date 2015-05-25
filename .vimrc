set nocompatible              " be iMproved, required

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Plugin 'godlygeek/csapprox'
Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'zaki/zazen'
Plugin 'flazz/vim-colorschemes'
"Plugin 'scrooloose/syntastic'
Plugin 'andviro/flake8-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Bundle 'christoomey/vim-tmux-navigator'
"Bundle "wookiehangover/jshint.vim"
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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

filetype plugin indent on

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
inoremap jk 
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

set pastetoggle=<F8>
set encoding=utf-8
set showcmd
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
"set hlsearch
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set incsearch
set ignorecase 
"set smartcase
set relativenumber
syntax off
set cindent

let g:PyFlakeDisabledMessages = 'E731'
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

let mapleader=" "

:nnoremap <leader>w :write<CR>
:nnoremap <leader>n :new<space>
:nnoremap <leader>e :edit<space>
:nnoremap <leader>d :bd<CR>
:nnoremap <leader>q :quit<CR>
:nnoremap <leader><tab> <C-w><C-w>

set clipboard=unnamedplus

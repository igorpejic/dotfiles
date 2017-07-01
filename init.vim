set nocompatible              " be iMproved, required

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'
Plug 'Vimjas/vim-python-pep8-indent'

" Plugin 'godlygeek/csapprox'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/deoplete.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'takac/vim-hardtime'
let g:hardtime_default_on = 1

Plug 'mileszs/ack.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'zaki/zazen'
Plug 'flazz/vim-colorschemes'
" THIS IS BEAST
Plug 'alfredodeza/khuno.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
" Bundle 'christoomey/vim-tmux-navigator'
"Bundle "wookiehangover/jshint.vim"
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plug 'kien/ctrlp.vim'
Plug 'bfredl/nvim-ipy'

""""""""""""""""""""""" Syntastic
Plug 'neomake/neomake'
Plug 'jaawerth/nrun.vim'

call plug#end()
call deoplete#enable()

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']

" when switching/opening a JS buffer, set neomake's eslint path, and enable it as a maker
au BufEnter *.js let b:neomake_javascript_eslint_exe = nrun#Which('eslint')

""""""""""""""""""""""""""" 

" let g:tomorrow_termcolors=256
colorscheme tomorrow
" set termguicolors

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins;
" append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of 
" unused plugins; append `!` to auto-approve removal
" Plugin 'wookiehangover/jshint.vim'

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set nohlsearch
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set incsearch
set ignorecase 
"set smartcase
set relativenumber
syntax on
"set cindent

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
set clipboard=unnamed

" CtrlP config
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn|htmlcov|build|_build)$',
    \ 'file': '\v\.(so|pyc)$',
    \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Damian Conway's Die Blinkënmatchen: highlight matches
nnoremap <silent> n n:call HLNext(0.1)<cr>
nnoremap <silent> N N:call HLNext(0.1)<cr>

function! HLNext (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

" 80 column limit
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%10v.\+/

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2


"
" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 3
let g:deoplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:deoplete#sources#dictionary#dictionaries = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }
" 
" Define keyword.
if !exists('g:deoplete#keyword_patterns')
    let g:deoplete#keyword_patterns = {}
endif
let g:deoplete#keyword_patterns['default'] = '\h\w*'
" 
" " Plugin key-mappings.
inoremap <expr><C-g>     deoplete#undo_completion()
inoremap <expr><C-l>     deoplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:deoplete#sources#omni#input_patterns')
  let g:deoplete#sources#omni#input_patterns = {}
endif
"let g:deoplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:deoplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:deoplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
" let g:deoplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" " Disable the window
set completeopt-=preview


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Ipython with vim = BEAST
let g:nvim_ipy_perform_mappings = 0
map <silent> <C-s> <Plug>(IPy-Run)
map <silent> <C-/> <Plug>(IPy-WordObjInfo)


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" always split windows vertically
"
set splitright
set splitbelow
hi clear SpellBad

" ctrlP
let g:ctrlp_custom_ignore = { 'dir': 'build$\|node_modules$' }
let g:ackprg = 'ag --nogroup --nocolor --column'

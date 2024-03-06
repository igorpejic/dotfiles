set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""""""""""""" Syntastic
"Plugin 'vim-syntastic/syntastic'
"let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
"let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn
""""""""""""""""""""""""""" 
let g:jsx_ext_required = 0

let g:tomorrow_termcolors=256
"colorscheme tomorrow

call plug#begin('~/.vim/plugged')
" Plug 'takac/vim-hardtime'
" let g:hardtime_default_on = 1
"
"autocopmlete

"Plug 'vim-denops/denops.vim'
" Plug 'Shougo/ddc.vim'
" Plug 'ycm-core/YouCompleteMe'
"
Plug 'neoclide/coc.nvim'
Plug 'noah/vim256-color'


Plug 'roxma/nvim-yarp'
Plug 'prettier/vim-prettier'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'gabesoft/vim-ags'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'psf/black'

" Plug 'w0rp/ale'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mxw/vim-jsx'
Plug 'zaki/zazen'
Plug 'flazz/vim-colorschemes'
Plug 'ivanov/vim-ipython'

Plug 'elixir-editors/vim-elixir'
" Plug 'ycm-core/YouCompleteMe'

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'heavenshell/vim-pydocstring'
"Plug 'alfredodeza/khuno.vim'
"Bundle "wookiehangover/jshint.vim"
Plug 'kien/ctrlp.vim'
call plug#end()

filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
inoremap jk 
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" airline
"let g:airline_mode_map = {
"    \ '__' : '-',
"    \ 'n'  : 'N',
"    \ 'i'  : 'I',
"    \ 'R'  : 'R',
"    \ 'c'  : 'C',
"    \ 'v'  : 'V',
"    \ 'V'  : 'V',
"    \ '' : 'V',
"    \ 's'  : 'S',
"    \ }
"
" remove the filetype part
let g:airline_section_x=''
let g:airline_section_a=''
let g:airline_section_y=''
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
" remove separators for empty sections
" let g:airline_skip_empty_sections = 1

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
syntax on
set cindent

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

let g:ctrlp_match_window='min:4,max:499'

"ags
:nnoremap <leader>s :Ags<Space>


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



autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"



"colorscheme Monokai
"ctrlP
let g:ctrlp_custom_ignore = { 'dir': 'build$\|node_modules$' }

hi clear SpellBad
hi SpellBad cterm=underline

" ALE
"" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = {
\  'javascript': ['flow']
\}
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType exs setlocal ts=2 sts=2 sw=2 expandtab

" ctags
set tags+=./.git/tags;,tags.swp

" ale
" upgrade vim: https://github.com/dense-analysis/ale/issues/1334
let g:ale_echo_cursor = 0


" latex
let g:Tex_GotoError = 0
"let g:Tex_ShowErrorContext = 0
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'
let g:vimtex_matchparen_enabled=0

"let g:tex_flavor = 'context'
let g:vimtex_view_method = 'mupdf'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml Prettier

color fu

" Matchit already installed in newer versions of vim.
" Don't need to add this onto pathogen bundle folder. We only need
" to configure it.
" Configure matchit so that it goes from opening tag to closing tag
au FileType html,eruby,rb,css,js,xml runtime! macros/matchit.vim


" Black autosave autofix
"augroup black_on_save
"  autocmd!
"  autocmd BufWritePre *.py Black
"augroup end
"
"
" LSP AUTOCOMPLETION
if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

" COC
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

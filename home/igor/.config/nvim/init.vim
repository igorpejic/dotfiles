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

call plug#begin('~/.vim/plugged')
" Plug 'takac/vim-hardtime'
" let g:hardtime_default_on = 1
"
"autocopmlete

"Plug 'vim-denops/denops.vim'
" Plug 'Shougo/ddc.vim'
" Plug 'ycm-core/YouCompleteMe'
"
"Plug 'neoclide/coc.nvim'
Plug 'noah/vim256-color'
Plug 'tpope/vim-fugitive'

Plug 'roxma/nvim-yarp'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'gabesoft/vim-ags'
"Plug 'heavenshell/vim-pydocstring'
"Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
"Plug 'psf/black', {'branch': 'stable'}
"

" Plug 'w0rp/ale'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mxw/vim-jsx'
Plug 'zaki/zazen'
Plug 'flazz/vim-colorschemes'
Plug 'folke/tokyonight.nvim'
Plug 'ivanov/vim-ipython'

Plug 'elixir-editors/vim-elixir'
" Plug 'ycm-core/YouCompleteMe'

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'heavenshell/vim-pydocstring'
"Plug 'alfredodeza/khuno.vim'
"Bundle "wookiehangover/jshint.vim"
Plug 'ctrlpvim/ctrlp.vim'

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'nvim-treesitter/nvim-treesitter', { 'branch': 'master', 'do': ':TSUpdate' }

" neo-tree file explorer + its dependencies (nvim-web-devicons already above)
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }

Plug 'sindrets/diffview.nvim'

call plug#end()

filetype plugin indent on    " required

" Use the Prettier bundled with vim-prettier. This avoids relying on the
" editor's PATH (which is often different when Neovim is launched graphically).
let g:prettier#exec_cmd_path = expand('~/.vim/plugged/vim-prettier/node_modules/.bin/prettier')

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

"set pastetoggle=<F8>
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
:nnoremap <leader>q :quit<CR>
:nnoremap <leader>d :bd<CR>
:nnoremap <leader><tab> <C-w><C-w>

set clipboard=unnamedplus

" CtrlP config
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn|htmlcov|build|_build)$',
    \ 'file': '\v\.(so|pyc)$',
    \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_match_window='min:4,max:499'

"ags
let g:ags_winplace = 'right'
:nnoremap <leader>s :Ags<Space>

" Search for the word under cursor
"nnoremap <Leader>s :Ags<Space><C-R>=expand('<cword>')<CR><CR>
" Search for the visually selected text
vnoremap <Leader>s y:Ags<Space><C-R>='"' . escape(@", '"*?()[]{}.') . '"'<CR><CR>
" Quit Ags
nnoremap <Leader><Leader>s :AgsQuit<CR>


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

let g:prettier#autoformat = 0
augroup prettier_autoformat
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml if executable(g:prettier#exec_cmd_path) | Prettier | endif
augroup END

color seoul256

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
" LSP is configured below via Neovim's built-in client (see 'LSP' lua block).
" The old vim-lsp and coc.nvim mappings were removed: neither plugin is
" installed, and the dead <C-[> coc mapping was shadowing <Esc>.

" Spell-check Markdown files and Git Commit Messages
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" Remove all trailing space
autocmd BufWritePre * :%s/\s\+$//e


" Bufferline
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

" nvim-treesitter
lua << EOF
require("nvim-treesitter.configs").setup{
  ensure_installed = {
    "python", "javascript", "typescript", "tsx", "lua", "vim", "vimdoc",
    "html", "css", "json", "yaml", "elixir", "bash", "markdown",
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
EOF

" LSP (Neovim built-in client, no plugin needed)
lua << EOF
-- Python: python-lsp-server (installed via pipx: `pipx install python-lsp-server`)
vim.lsp.config("pylsp", {
  cmd = { "pylsp" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
})
vim.lsp.enable("pylsp")

-- Buffer-local keymaps, set only once a server attaches to the buffer.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)       -- jump to definition
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)      -- jump to declaration
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)       -- list references
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)   -- jump to implementation
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)  -- jump to type definition
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)             -- hover docs
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)   -- rename symbol
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- code action
    vim.keymap.set("n", "[g", function() vim.diagnostic.jump({ count = -1 }) end, opts)
    vim.keymap.set("n", "]g", function() vim.diagnostic.jump({ count = 1 }) end, opts)
  end,
})
EOF

" neo-tree file explorer (sidebar)
lua << EOF
require("neo-tree").setup({
  close_if_last_window = true,   -- don't leave nvim open with only the tree
  filesystem = {
    follow_current_file = { enabled = true },  -- highlight the file you're editing
    use_libuv_file_watcher = true,             -- auto-refresh on external changes
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = { width = 32 },
})
-- <leader>t toggles the sidebar; <leader>o reveals the current file in it
vim.keymap.set("n", "<leader>t", "<cmd>Neotree toggle left<cr>", { silent = true, desc = "Toggle neo-tree" })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree reveal<cr>", { silent = true, desc = "Reveal file in neo-tree" })
EOF


"" navigation
" Navigate splits without Ctrl-w
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" will clash with my pasting
nnoremap <C-j> <C-w>j

"" diffview
" Jump to next diff
lua << EOF
local actions = require("diffview.actions")
require("diffview").setup({
  keymaps = {
    view = {
      {
        "n",
        "<leader>g",
        function()
          actions.focus_files()

          vim.schedule(function()
            actions.select_next_entry()
            actions.select_entry()

            vim.schedule(function()
              actions.focus_entry()
              vim.cmd("normal! gg]c")
            end)
          end)
        end,
        { desc = "Next file and jump to first hunk" },
      },
      {
        "n",
        "<C-s>",
        function()
            actions.toggle_stage_entry()
        end,
        { desc = "Stage/unstage current file" },
      }
    },

    file_panel = {
      {
        "n",
        "<leader>g",
        function()
          actions.focus_entry()
          vim.schedule(function()
            actions.focus_entry()
            vim.cmd("normal! gg]c")
          end)
        end,
        { desc = "Open file and jump to first hunk" },
      },
      {
        "n",
        "<C-s>",
        function()
            actions.toggle_stage_entry()
        end,
        { desc = "Stage/unstage current file" },
      },
    }
  },
})
EOF

" Open Diffview
nnoremap <leader>D :DiffviewOpen<CR>

" Close Diffview
nnoremap <leader><leader>D :DiffviewClose<CR>:confirm qall<CR>

colorscheme tokyonight

set splitright

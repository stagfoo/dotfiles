"Setup
syntax on

"Vars
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:deoplete#enable_at_startup = 1

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
" Plug 'Quramy/tsuquyomi'
Plug 'posva/vim-vue'
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
" For async completion
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/deoplete-typescript', { 'do': 'npm install -g typescript', 'for': 'typescript' }
" For Denite features
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeMouseMode=3 

"File View
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set t_Co=256
let g:airline_theme = 'wombat'

hi LineNr  ctermfg=59
set fillchars+=vert:│

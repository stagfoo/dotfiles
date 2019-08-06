
"Mouse controller
:set mouse=a
"Polyglot auto highlighter
syntax on

"Commands"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Langs
autocmd FileType typescript setlocal completeopt-=menu
autocmd FileType typescript :set makeprg=tsc
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

"Vars"
let g:typescript_compiler_binary = 'tsc'
"let g:tsuquyomi_completion_detail = 1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:deoplete#enable_at_startup = 1

"Plugins"
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" For Denite features
Plug 'Shougo/denite.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Editor Display
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set t_Co=256
let g:airline_theme = 'wombat'

"color
hi LineNr  ctermfg=54
set fillchars+=vert:│


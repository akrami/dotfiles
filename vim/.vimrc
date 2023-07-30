" CONFIG ----------------------------------------------------------------- {{{

set encoding=UTF-8

set backspace=indent,eol,start
filetype on
set nocompatible
set number
set cursorline

set shiftwidth=4
set tabstop=8
set softtabstop=4
set expandtab
filetype indent on
set smartindent

set nowrap
set showmode
set hidden
set incsearch
set ignorecase
set hlsearch
set smartcase
set showmatch

set noerrorbells
set visualbell
set mouse=
set ttymouse=

set splitbelow
set splitright

set scrolloff=5

set undofile
set undodir=~/.vim/undo/
if !isdirectory($HOME . "/.vim/undo")
     silent call mkdir($HOME . "/.vim/undo", "p", 0770)
endif
set viminfo+=n~/.vim/viminfo
set noswapfile
set nobackup

" Fix for lightline
set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Theme
syntax on
set background=dark
if has('termguicolors')
    set termguicolors
endif
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
colorscheme everforest

" Git Blame Configuration
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

" General plugins
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'zivyangll/git-blame.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

" Ansible plugins
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

" Lint
Plug 'dense-analysis/ale'

" Theme
Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'

call plug#end()

" }}} 

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


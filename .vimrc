
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch
syntax on
set background=dark
set ignorecase
set smartcase
set termencoding=utf8
set nocompatible
set ruler
set showcmd
set foldenable
set foldlevel=100
set foldmethod=indent
set mouse=a
set mousemodel=popup
set hidden
set mousehide
set autoindent
set nowrap
set smartindent
set showmatch
set history=200
set wildmenu
set guifont=Monospace\ 28
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim.plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
" --- Python ---
Plug 'klen/python-mode'               " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plug 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plug 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plug 'chrisbra/Colorizer'
Plug 'etdev/vim-hexcolor'
Plug 'fidian/hexmode'
call plug#end()

colorscheme codedark

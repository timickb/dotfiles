
set number
set expandtab
set tabstop=4
set shiftwidth=4
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
highlight Normal ctermbg=none
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let &t_ut=''

map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim.plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tomasiser/vim-code-dark'
Plug 'blueshirts/darcula'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plug 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plug 'chrisbra/Colorizer'
Plug 'etdev/vim-hexcolor'
Plug 'fidian/hexmode'
Plug 'xavierd/clang_complete'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fatih/vim-go'
Plug 'makerj/vim-pdf'
Plug 'joshdick/onedark.vim'

call plug#end()

let g:onedark_termcolors=256
colorscheme onedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

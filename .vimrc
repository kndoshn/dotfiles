set encoding=utf-8
scriptencoding utf-8
filetype plugin indent on
set backspace=indent,eol,start
set clipboard+=unnamed
set noswapfile
set nobackup
set history=1000
set scrolloff=5
set wildmenu
set wildmode=list:longest
set ttimeoutlen=10

" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | quit
endif

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-endwise'
  Plug 'cohama/lexima.vim'
call plug#end()

" Encoding
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" Tab, Indent
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Appearance
syntax enable
set number
set display=lastline
set showmatch
set matchtime=1
set cursorline

" Mouse
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

" ESC
inoremap <silent> jj <ESC>

" 検索ハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR>

" 表示行単位で移動（長い行で便利）
nnoremap j gj
nnoremap k gk

" Cmd+S で保存（MacVim用）
nnoremap <D-s> :w<CR>
inoremap <D-s> <Esc>:w<CR>a

" 行頭・行末移動を楽に
nnoremap H ^
nnoremap L $

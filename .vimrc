set encoding=utf-8
scriptencoding utf-8
filetype plugin indent on
set backspace=indent,eol,start
set clipboard+=unnamed

" NeoBundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'sheerun/vim-polyglot'
    NeoBundle 'tpope/vim-endwise'
    NeoBundle 'cohama/lexima.vim'
call neobundle#end()
NeoBundleCheck

" Encoding
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" Tab, Indent
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

" Appearance
syntax enable
set number
set cursorline
set display=lastline

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

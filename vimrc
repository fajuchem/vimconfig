runtime macros/matchit.vim
set colorcolumn=120
highlight ColorColumn ctermbg=8
set nocompatible
set number
set relativenumber
syntax enable
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set incsearch
set listchars=eol:$,tab:>-,trail:-,extends:-,precedes:-
hi NonText ctermfg=7 guifg=gray
set ignorecase
set list
set modelines=0
" vuddle shit
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'
Plugin 'pangloss/vim-javascript'
Plugin 'SQLUtilities'
Plugin 'Align'
Plugin 'scrooloose/nerdtree'
Plugin 'elzr/vim-json'
call vundle#end()            " required
filetype plugin indent on    " required
color dracula
hi NonText ctermfg=247 guifg=grey
highlight SpecialKey ctermfg=grey
map <silent> <C-n> :NERDTreeToggle<CR>

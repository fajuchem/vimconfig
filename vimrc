runtime macros/matchit.vim
syntax enable
let mapleader = '\'
set backspace=indent,eol,start
set t_Co=256
set colorcolumn=120
set wildmenu
set autowrite
set nocompatible
set number
set relativenumber
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set incsearch
set list
set listchars=eol:$,tab:>-,trail:-,extends:-,precedes:-
highlight ColorColumn ctermbg=8
highlight SpecialKey ctermfg=grey
set ignorecase
set modelines=0
set tags+=tags,tags.vendors
" Ativa salvamento dos undos
set undodir=/tmp/
set undofile
" remaps
map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>
map <leader>l :ls<CR>
map <leader>r :reg<CR>
map <silent> <C-n> :NERDTreeToggle<CR>
map <c-k> :m-2<CR>
map <c-j> :m+1<CR>
" vuddle shit
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'
Plugin 'SQLUtilities'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'evidens/vim-twig'
"Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'Align'
Plugin 'vim-airline/vim-airline'
Plugin 'stephpy/vim-php-cs-fixer'
"Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'tobys/vmustache'
"Plugin 'tobyS/pdv'
Plugin 'chrisbra/csv.vim'
Plugin 'dense-analysis/ale'
Plugin 'fatih/vim-go'
Plugin 'leafgarland/typescript-vim'
call vundle#end()            " required
filetype plugin indent on    " required
"" seta color precisa ser usada depois de dar load nos plugins
hi NonText ctermfg=247 guifg=grey
" auto use statement
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" Faz uma mágica pra usar set paste antes e depois do ctrl+shift+v
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
" airline plugin configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_x = '%{strftime("%d/%m %r")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
" vim montion configs
let g:EasyMotion_smartcase = 1
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" syntaic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"colorscheme dracula
colorscheme bw
highlight Normal ctermbg=None
"syntax off
"set autoindent
"set smarttab


let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint']}
let g:ale_linters = {'php': ['php', 'langserver', 'phan']}
let g:ale_php_langserver_executable = expand('~/.config/composer/vendor/bin/php-language-server.php')
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
"set omnifunc=ale#completion#OmniFunc
let g:ale_completion_tsserver_autoimport = 1

highlight ALEWarning ctermfg=white ctermbg=5
highlight ALEError ctermfg=white ctermbg=red

packloadall
silent! helptags ALL

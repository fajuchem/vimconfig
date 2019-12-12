

" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  5 Oct 2001
" URL:      http://fugal.net/vim/colors/bw.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="bw"

hi SpecialKey     cterm=NONE        ctermfg=NONE
hi NonText        cterm=NONE            ctermfg=NONE
hi Directory      cterm=NONE            ctermfg=NONE
hi ErrorMsg       cterm=standout        ctermfg=NONE
hi IncSearch      cterm=reverse         ctermfg=NONE
hi Search         cterm=reverse         ctermfg=NONE
hi MoreMsg        cterm=NONE            ctermfg=NONE
hi ModeMsg        cterm=NONE            ctermfg=NONE
hi LineNr         cterm=NONE       ctermfg=NONE
hi Question       cterm=standout        ctermfg=NONE
hi StatusLine     cterm=NONE,reverse    ctermfg=NONE
hi StatusLineNC   cterm=reverse     ctermfg=NONE
hi VertSplit      cterm=reverse     ctermfg=NONE
hi Title          cterm=NONE        ctermfg=NONE
hi Visual         cterm=reverse     ctermfg=NONE
hi VisualNOS      cterm=NONE,NONE  ctermfg=NONE
hi WarningMsg     cterm=standout    ctermfg=NONE
hi WildMenu       cterm=standout    ctermfg=NONE
hi Folded         cterm=standout    ctermfg=NONE
hi FoldColumn     cterm=standout    ctermfg=NONE
hi DiffAdd        cterm=NONE            ctermfg=NONE
hi DiffChange     cterm=NONE            ctermfg=NONE
hi DiffDelete     cterm=NONE            ctermfg=NONE
hi DiffText       cterm=reverse         ctermfg=NONE
hi Comment        cterm=NONE            ctermfg=NONE
hi Constant       cterm=NONE   ctermfg=NONE
hi Special        cterm=NONE        ctermfg=NONE
hi Identifier     cterm=NONE   ctermfg=NONE
hi Statement      cterm=NONE        ctermfg=NONE
hi PreProc        cterm=NONE   ctermfg=NONE
hi Type           cterm=NONE   ctermfg=NONE
hi NONEd     cterm=NONE   ctermfg=NONE
hi Ignore         cterm=NONE        ctermfg=NONE
hi Error          cterm=reverse     ctermfg=NONE
hi Todo           cterm=standout    ctermfg=NONE



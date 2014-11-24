" $Id: java_jah.vim 13 2007-11-21 06:02:34Z jheddings $

if exists("b:jah_ftplugin")
  finish
endif
let b:jah_ftplugin = 1

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal formatoptions=crql
setlocal cindent 
setlocal comments=sr:/*,mb:*,el:*/,://

" tab completion mapping
if g:jah_SmartTabCompletion
  inoremap <buffer> <Tab>   <C-R>=KeywordTabWrapper("\\\<C-N\>")<CR>
  inoremap <buffer> <S-Tab> <C-R>=KeywordTabWrapper("\\\<C-P\>")<CR>
endif

" comments
map <buffer> <silent> \c mz^i//<ESC>`z
map <buffer> <silent> \C mz^2x`z
vmap <buffer> <silent> \c <ESC>`<i/*<ESC>`>a*/<ESC>
vmap <buffer> <silent> \C <ESC>`<2x`>h2x

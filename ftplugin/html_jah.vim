" $Id: html_jah.vim 10 2007-10-24 21:12:22Z jheddings $

if exists("b:jah_ftplugin")
  finish
endif
let b:jah_ftplugin = 1

setlocal formatoptions=tcql
setlocal comments=sr:<!--,mb:-,el:-->

" comments (comments a tag, not a LINE)
map <buffer> <silent> \c mz?<<CR>a!--<ESC>/><CR>i--<ESC>`z
map <buffer> <silent> \C mz?<<CR>l3x/><CR>2X`z
vmap <buffer> <silent> \c <ESC>`<i<!--<ESC>`>a--><ESC>
vmap <buffer> <silent> \C <ESC>`<4x`>2h3x

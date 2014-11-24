" $Id: jam_jah.vim 10 2007-10-24 21:12:22Z jheddings $

if exists("b:jah_ftplugin")
  finish
endif
let b:jah_ftplugin = 1

setlocal tabstop=3
setlocal softtabstop=3
setlocal shiftwidth=3

setlocal formatoptions=crql
setlocal comments=O:#

" comments
map <buffer> <silent> \c :s+^+#+<CR>
map <buffer> <silent> \C :s+^#++<CR>
vmap <buffer> <silent> \c <ESC>:'<,'>s+^+#+<CR>
vmap <buffer> <silent> \C <ESC>:'<,'>s+^#++<CR>

" define some jam syntax stuff
syn match Brackets /[()<>]/

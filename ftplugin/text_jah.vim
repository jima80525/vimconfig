" $Id: text_jah.vim 10 2007-10-24 21:12:22Z jheddings $

if exists("b:jah_ftplugin")
  finish
endif
let b:jah_ftplugin = 1

setlocal noexpandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

setlocal wrap
setlocal linebreak
setlocal nosmartindent

setlocal formatoptions=w1tn
setlocal textwidth=78

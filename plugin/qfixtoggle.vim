" $Id: qfixtoggle.vim 10 2007-10-24 21:12:22Z jheddings $
" See ':help qfixtoggle' for more information.

if exists('g:QFixToggle_Loaded')
  finish
endif
let g:QFixToggle_Loaded = 1


" set the default options for the plugin
if !exists("g:QFixToggle_Height")
  let g:QFixToggle_Height = 10
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggles the quickfix window.
command! -bang -nargs=0 QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:QFixToggle_Bufnr") && a:forced == 0
    cclose
  else
    execute "copen " . g:QFixToggle_Height
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" perform setup operations for the quickfix window
function! QFixToggle_Setup()
  let g:QFixToggle_Bufnr = bufnr("$")
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" called to determine if the quickfix window is closed
function! QFixToggle_Closed()
  if exists("g:QFixToggle_Bufnr") && expand("<abuf>") == g:QFixToggle_Bufnr
    unlet! g:QFixToggle_Bufnr
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" used to track the quickfix window
augroup QFixToggle
  autocmd!
  autocmd BufWinEnter quickfix call QFixToggle_Setup()
  autocmd BufWinLeave * call QFixToggle_Closed()
augroup END

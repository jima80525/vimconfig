" $Id: jah.vim 41 2008-12-16 20:00:00Z jheddings $
" See ':help jah' for more information.

if exists('g:loaded_jah')
  finish
endif
let g:loaded_jah = 1

if !exists("g:jah_SmartTabCompletion")
  let g:jah_SmartTabCompletion = 1
endif

if !exists("g:jah_CwdFollowsBuffer")
  let g:jah_CwdFollowsBuffer = 1
endif

if !exists("g:jah_WhitespaceEOL")
  let g:jah_WhitespaceEOL = 1
endif

if !exists("g:jah_LocalVimSearch")
  let g:jah_LocalVimSearch = 1
endif

if !exists("g:jah_CTagsSearch")
  let g:jah_CTagsSearch = 1
endif

" modify the help menu
menu Help.-jahsep- :
"menu Help.jah \<F1>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" using the quickfix window
nmap <M-,> :cprev<CR>
nmap <M-.> :cnext<CR>
nmap <M-/> :cc<CR>

" using tags and tagfiles
nmap <C-\> :execute "ptag " . expand("<cword>")<CR>
nmap <C-}> :tnext<CR>
nmap <C-{> :tprev<CR>

" buffer navigation
nmap <C-Tab> :bnext<CR>
nmap <C-S-Tab> :bprev<CR>

" setup the help system
"nmap <C-F1> :execute "help " . expand("<cword>")<CR>
"nmap \<F1> :help jah<CR>
"nmap <silent> <F1> <Nop>

" use tab to indent in visual mode
vmap <Tab> >'<0v'>$
vmap <S-Tab> <'<0v'>$

" windows-like keys
map <M-Space> :simalt ~<CR>
"nmap <C-A> ggVG$

" plugin mappings
nmap \s <Plug>HiLinkTrace
nmap <silent> \a :A<CR>
nmap <silent> \\ :call BufferList()<CR>
nmap <silent> \` :QFix<CR>

" command line editing
map <C-K> :<Up>
cnoremap <C-O> <Home>
cnoremap <C-G> <C-E>
cnoremap <C-D> <S-Right><C-W>
cnoremap <C-BS> <C-W>
cnoremap <C-W> <S-Right>
cnoremap <C-B> <S-Left>
cnoremap <C-H> <Left>
cnoremap <C-L> <Right>
cnoremap <C-J> <Down>
cnoremap <C-K> <Up>

" miscellaneous mappings
nmap <silent> \n :set hlsearch!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the current directory to the file being edited
if g:jah_CwdFollowsBuffer
  autocmd! BufEnter * execute ":lcd " . expand("%:p:h")
endif

" highlight trailing whitespace
if g:jah_WhitespaceEOL
  highlight WhiteSpaceEOL ctermbg=red guibg=red
  match WhiteSpaceEOL /\s\+$/
endif

" search for a ctags file
if g:jah_CTagsSearch
  let s:ctags = findfile(".ctags", ".;")
  if s:ctags != ''
    execute "set tags=" . s:ctags
  endif
endif

" search for a local.vim file to include
if g:jah_LocalVimSearch
  let s:localvim = findfile("local.vim", ".;")
  if s:localvim != ''
    execute "source " . s:localvim
  endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if the current word is a keyword, insert cmd key, otherwise a <Tab>
function! KeywordTabWrapper(cmd)
  " col() is 1-based
  let l:col = col(".") - 1

  if l:col
    " if the current word is a keyword, complete it
    if getline(".")[l:col - 1] =~ '\k'
      execute "return \"" . a:cmd . "\""
    endif
  endif

  return "\<Tab>"
endfunction

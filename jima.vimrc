" Jim Anderson's vimrc file - based on one from Jason Heddings
let $VIMFILES=expand("<sfile>:p:h")

" basic stuff
"  stores 50 marks, 500 lines max for each register and stores it in viminfo
set viminfo='50,<500,n$VIMFILES/viminfo


" general settings
set showcmd
" do not create backups on write
set nobackup
" display line, col info on status
set ruler
set noerrorbells

set scrolloff=2
set updatetime=500
set showtabline=1
set backspace=indent,eol,start

" tell vim to store temp files in .vim directory
set backupdir=~/.vim/vimtmpdir,.
set directory=~/.vim/vimtmpdir,.

filetype plugin indent on

" search options
set incsearch
set ignorecase
set smartcase

" useful programming features
set number
set expandtab
set smartindent
set showmatch
set matchtime=5

" GUI features
set mousehide
set guioptions=gmrLt
set winaltkeys=menu

" wildmenu settings
set wildmenu
set wildmode=full

" the default is "\" but I use that a lot, so...
let g:mapleader=","

" set up syntax highlighting for freemarker files
au BufRead,BufNewFile *.ftl set filetype=ftl
au! Syntax ftl source $VIM/syntax/ftl.vim

" other configuration files
helptags $VIMFILES/doc

set guifont=Monospace\ 13
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
set history=1000 " How many lines of history to remember
set autoread  " automatically read in files that changed external to the editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colors & font
syntax on
colorscheme torte " my theme

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set linespace=0 "
set cmdheight=1 " the command bar is 1 high
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set shortmess+=r " use [RO] for [Read Only]
" page down with <Space> (like in `Lynx', `Mutt', `Pine', `Netscape Navigator',
" `SLRN', `Less', and `More');
noremap <Space> <PageDown>
map <F1> <Plug>NERDCommenterTogglej
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" map f3 to repeat the last command on the start of the next line
map <F3> 0j.
map <F9> .n
" highlight column 81
set colorcolumn=81
" have <Tab> (and <Shift>+<Tab> where it works) change the level of
" indentation:
inoremap <Tab> <C-T>
inoremap <S-Tab> <C-D>
map ; :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffer navigation
nmap <C-Tab> :bnext<CR>
nmap <C-S-Tab> :bprev<CR>

" use tab to indent in visual mode
vmap <Tab> >'<0v'>$
vmap <S-Tab> <'<0v'>$

" plugin mappings
nmap <silent> \\ :call BufferList()<CR>

" miscellaneous mappings
nmap <silent> \n :set hlsearch!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the current directory to the file being edited
autocmd! BufEnter * execute ":lcd " . expand("%:p:h")

" highlight trailing whitespace
highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
set lines=80 " 80 lines tall
set columns=100 " 160 cols wide
set novisualbell " don't blink
set laststatus=2 " always show the status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn " See Help (complex)
set autoindent " autoindent
set cindent " do c-style indenting
set tabstop=3 " tab spacing (settings below are just to unify it)
set softtabstop=3 " unify
set shiftwidth=3 " unify
set nowrap " do not wrap lines
set smarttab " use tabs at the start of a line, spaces elsewhere
set preserveindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let perl_extended_vars=1 " highlight advanced perl vars inside strings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove trailing white spaces on each save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au  BufWritePre * exe "mark s | g/$/s/  *$// | 's"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set up pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configure Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_cpp_checkers = [ ]
let g:syntastic_python_checkers = ['flake8', ]
"let g:syntastic_python_checkers = ['pyflakes', 'pylint', 'pep8']
"let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_python_pylint_args = "--load-plugins pylint_django"
" let f11 and f12 walk through signs on file
noremap <F11> :lprev<enter>
noremap <F12> :lnext<enter>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configure Rainbow Parens
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set up ack.vim to use silver searcher if available
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
   let g:ackprg = 'ag --nogroup --nocolor --column'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These are used by some of jason heddings' language files I inherited
if !exists("g:jah_SmartTabCompletion")
  let g:jah_SmartTabCompletion = 1
endif

if !exists("g:jah_CwdFollowsBuffer")
  let g:jah_CwdFollowsBuffer = 1
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (from Jason Heddings)
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shell commands from vim
" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  let isfirst = 1
  let words = []
  for word in split(a:cmdline)
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand(word)
      endif
      let word = shellescape(word, 1)
    endif
    call add(words, word)
  endfor
  let expanded_cmdline = join(words)
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:  ' . a:cmdline)
  call setline(2, 'Expanded to:  ' . expanded_cmdline)
  call append(line('$'), substitute(getline(2), '.', '=', 'g'))
  silent execute '$read !'. expanded_cmdline
  1
endfunction


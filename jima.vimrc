" $Id: jah.vimrc 34 2008-08-12 21:52:56Z jheddings $
let $VIMFILES=expand("<sfile>:p:h")

" basic stuff
set viminfo='50,n$VIMFILES/viminfo

" window sizing stuff
if has("gui_running")
  set lines=60
  set columns=100
endif
" **  This line is 80 chars long  **********************************************

" general settings
set showcmd
set nobackup
set ruler
set noerrorbells

set scrolloff=2
set history=100
set updatetime=500
set showtabline=1
set backspace=indent,eol,start

" tell vim to store temp files in .vim directory
set backupdir=~/.vim/vimtmpdir,.
set directory=~/.vim/vimtmpdir,.

filetype plugin indent on

" search options
set incsearch
" set nohlsearch
set ignorecase
set smartcase

" useful programming features
set number
set expandtab
set smartindent
set showmatch
set matchtime=5
set cscopequickfix=s-,c-,d-,i-,t-,e-

" GUI features
set mousehide
set guioptions=gmrLt
set winaltkeys=menu

" wildmenu settings
set wildmenu
set wildmode=full

" colors & font
syntax on
colors mjb

" the default is "\" but I use that a lot, so...
let g:mapleader=","

" set up syntax highlighting for freemarker files
au BufRead,BufNewFile *.ftl set filetype=ftl
au! Syntax ftl source $VIM/syntax/ftl.vim

" other configuration files
helptags $VIMFILES/doc

" configure QFixToggle
let g:QFixToggle_Height=12

" configure clibs
let c_hi_identifiers = 'all'
let c_hi_libs = ['*']

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
" `SLRN', `Less', and `More'); page up with - (like in `Lynx', `Mutt', `Pine'),
noremap <Space> <PageDown>
noremap - <PageUp>
map <F1> <Plug>NERDCommenterTogglej
" map f3 to repeat the last command on the start of the next line
map <F3> 0j.
" highlight column 81
set colorcolumn=81
" have <Tab> (and <Shift>+<Tab> where it works) change the level of
" indentation:
inoremap <Tab> <C-T>
inoremap <S-Tab> <C-D>
map ; :
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
" Folding
"    Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmethod=indent " Make folding indent sensitive
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
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

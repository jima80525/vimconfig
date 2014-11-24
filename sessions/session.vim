let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <C-BS> 
inoremap <S-Tab> 
nmap  ggVG$
vmap 	 >'<0v'>$
map  :<Up>
nmap  :execute "ptag " . expand("<cword>")
noremap   <PageDown>
nmap ,ihn :IHN
nmap ,is :IHS:A
nmap ,ih :IHS
noremap - <PageUp>
map ; :
vmap [% [%m'gv``
nmap <silent> \n :set hlsearch!
nmap <silent> \` :QFix
nmap <silent> \\ :call BufferList()
nmap <silent> \a :A
nmap \s <Plug>HiLinkTrace
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <S-Tab> <'<0v'>$
nmap <C-S-Tab> :bprev
nmap <C-Tab> :bnext
nmap <C-{> :tprev
nmap <C-}> :tnext
noremap <F2> 02xj
noremap <F1> 0i//j
cnoremap  <S-Left>
cnoremap  <S-Right>
cnoremap  
cnoremap  <Left>
inoremap 	 
cnoremap <NL> <Down>
cnoremap  <Up>
cnoremap  <Right>
cnoremap  <Home>
cnoremap  <S-Right>
imap ,ihn :IHN
imap ,is :IHS:A
imap ,ih :IHS
map   :simalt ~
nmap ¯ :cc
nmap ® :cnext
nmap ¬ :cprev
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=2
set cscopeprg=/usr/bin/cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopetag
set cscopeverbose
set expandtab
set fileencodings=ucs-bom,utf-8,latin1
set foldopen=block,hor,mark,percent,quickfix,tag
set formatoptions=tcql
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,a:blinkon0
set guioptions=gmrLt
set helplang=en
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:|\ ,trail:.,extends:>,precedes:<,eol:$
set mouse=a
set preserveindent
set ruler
set scrolloff=10
set shiftwidth=3
set shortmess=atIr
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=3
set tabstop=3
set termencoding=utf-8
set updatetime=500
set whichwrap=b,s,<,>,h,l
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/iproductsfull/evolution/9310/trunk/specs/iptables
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=100
setlocal foldlevel=100
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal preserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
lcd ~/work/hal-txb
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atIr
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

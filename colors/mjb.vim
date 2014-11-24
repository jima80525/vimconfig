" mjb color scheme
" this is for GVIM only

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="mjb"

" Normal text
"hi Normal guifg=#D3D3D3 guibg=#000000 ctermfg=lightgray ctermbg=black
"hi Normal   guifg=lightgray guibg=black   ctermfg=lightgray ctermbg=black
hi Normal   guifg=lightgray guibg=gray10   ctermfg=lightgray ctermbg=black

" Tweak the line number column
hi LineNr   guifg=Green   guibg=grey30 term=underline ctermfg=14
"hi LineNr   guifg=#FFFF00 guibg=#4D4D4D

" Messages
hi WarningMsg guifg=#FF0000               ctermfg=red
hi ErrorMsg guifg=White   guibg=#FF0000   ctermfg=white   ctermbg=red

" Folding
hi Folded   guifg=DarkBlue  guibg=LightGrey
hi FoldColumn guifg=DarkBlue guifg=DarkBlue

" Diff
hi DiffAdd                guibg=DarkBlue
hi DiffChange             guibg=DarkMagenta
hi DiffDelete guifg=Blue  guibg=DarkCyan  gui=bold
hi DiffText               guibg=#FF0000   gui=bold

" Groups for programming
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   "Constant -> String, Character, Number, Boolean, Float
hi Constant guifg=#DC143C                 ctermfg=darkred
hi String   guifg=#00FFFF                 ctermfg=darkgray
hi Character guifg=#00FFFF                ctermfg=darkgray
hi Number   guifg=#DC143C                 ctermfg=darkred
hi Boolean  guifg=#8080FF                 ctermfg=cyan
hi Float    guifg=#8080FF                 ctermfg=cyan

   "Identifier -> Function
hi Identifier guifg=#FAA460 gui=NONE      ctermfg=cyan 
hi Function guifg=#FAA460                 ctermfg=cyan

   "Statement -> Conditional, Repeat, Label, Operator, Keyword, Exception
hi Statement guifg=#8080FF  gui=NONE      ctermfg=cyan

   "PreProc -> Include, Define/Macro, PreCondit
hi PreProc  guifg=#EE82EE                 ctermfg=lightmagenta
hi Include  guifg=#1010FF                 ctermfg=blue
"hi PreCondit guifg=#1010D0

   "Type -> StorageClass, Structure, Typedef
hi Type     guifg=#8080FF   gui=NONE      ctermfg=cyan

   "Special -> SpecialChar, Tag, Delimiter, SpecalComment, Debug
hi Special  guifg=#D18A00                 ctermfg=cyan

hi Underline guifg=#80A0FF  gui=underline
hi Comment  guifg=#008000                 ctermfg=darkgreen
hi Error    guifg=white     guibg=#FF0000 ctermfg=white   ctermbg=red
hi Todo     guifg=#FFFF00   guibg=#A0A0FF ctermfg=black   ctermbg=lightgreen
hi Brackets guifg=#FFD700
hi Relation guifg=#FF8080


" File browser
hi Directory guifg=#40FFFF

" Search highlight
hi Search   guifg=Black     guibg=#FFFF00 ctermfg=black   ctermbg=darkred
hi IncSearch                gui=reverse

" Visual mode
"hi Visual gui=reverse guifg=grey guibg=fg
hi Visual guifg=darkcyan guibg=white      ctermfg=green   ctermbg=white
hi VisualNOS gui=underline,bold

" Set up the look of the cursor
hi Cursor   guifg=black     guibg=green
hi lCursor  guifg=black     guibg=#40FFFF

" Status line messages
hi StatusLine gui=reverse,bold
hi StatusLineNC gui=reverse

" Other messages
hi ModeMsg gui=bold
hi MoreMsg gui=bold guifg=SeaGreen

" Groups used in the 'highlight' and 'guicursor' options default value.
hi VertSplit gui=reverse
hi NonText gui=bold guifg=LightBlue guibg=grey30
hi Question gui=bold guifg=Green
hi SpecialKey guifg=#40FFFF
hi Title gui=bold guifg=Magenta
hi WildMenu guibg=#FFFF00 guifg=Black
hi Ignore guifg=grey20

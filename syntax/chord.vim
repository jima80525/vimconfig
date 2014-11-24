" $Id: wiki_jah.vim 10 2007-10-24 21:12:22Z jheddings $
syntax case ignore

"syntax region chrdVerse start="{" end="}" skip="\[.*\]"
syntax region chrdChord start="\[" end="\]"
syntax region chrdAnnot start="<" end=">"

"hi def link chrdVerse String
hi def link chrdAnnot Statement
hi def link chrdLabel Special
hi def link chrdChord Type

let b:current_syntax = "chord"

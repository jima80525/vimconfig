" $Id: ubv.vim 43 2008-12-16 20:00:52Z jheddings $

syntax region ubvComment start=+#+ end=+$+
syntax region ubvComment start=+//+ end=+$+
syntax region ubvString start=+'+ end=+'+
syntax region ubvString start=+"+ end=+"+
syntax region ubvIdentifier start=+^[a-zA-Z0-9_]+ end=+=+me=s-1

syntax match ubvVariable /\${[^}]*}/
syntax match ubvNumber /\<[A-F0-9]\+\>/
syntax match ubvTypeExt /\.[lwb]\>/
syntax match ubvTypeExt /\.[012]\>/

syntax keyword ubvTodo contained TODO FIXME XXX

syntax keyword ubvOperator test itest

syntax keyword ubvStatement if then else fi

syntax keyword ubvCommand bdi bdinfo conin coninfo fli flinfo imi iminfo help
syntax keyword ubvCommand ba base crc crc32 cmp cp md mm mtest mw nm loop
syntax keyword ubvCommand era erase prot protect mtdparts
syntax keyword ubvCommand autoscr bootm go
syntax keyword ubvCommand bootp dhcp loadb loads rarp rarpboot tftp tftpboot
syntax keyword ubvCommand printenv saveenv setenv run boot bootd
syntax keyword ubvCommand iprobe icrc32 imw inm imm imd iloop
syntax keyword ubvCommand echo reset sleep vers version

" TODO this command has many sub-commands
syntax keyword ubvCommand fdt

hi def link ubvComment Comment
hi def link ubvVariable PreProc
hi def link ubvNumber Number
hi def link ubvString String
hi def link ubvIdentifier Identifier
hi def link ubvCommand Statement
hi def link ubvOperator Operator
hi def link ubvTypeExt Special
hi def link ubvStatement Statement
hi def link ubvTodo Todo

let b:current_syntax = "ubv"

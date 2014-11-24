" automatically load and save session on start/exit.
" Modified by robin burchell <w00t@inspircd.org> to only load/save sessions if started with no arguments.
function! MakeSession()
  if g:sessionfile != ""
    echo "Saving."
    if (filewritable(g:sessiondir) != 2)
      exe 'silent !mkdir -p ' g:sessiondir
      redraw!
    endif
    exe "mksession! " . g:sessionfile
  endif
endfunction

function! LoadSession()
  if argc() == 0
    let g:sessiondir = $HOME . "/.vim/sessions" . getcwd()
    let g:sessionfile = g:sessiondir . "/session.vim"
    if (filereadable(g:sessionfile))
      exe 'source ' g:sessionfile
    else
      echo "No session loaded."
    endif
  else
    let g:sessionfile = ""
    let g:sessiondir = ""
  endif
endfunction

au VimEnter * :call LoadSession()
au VimLeave * :call MakeSession()


command IndentOff setl noai nocin nosi indentexpr=""
command IndentOn  setl ai cin si  "indentexpr can't be re-enabled.
command IndentStatus set ai? si? cin? indentexpr?

command  Putdate put =strftime('%Y/%m/%d %T')
command  Showdate echo 'Current time is [' . strftime('%Y/%m/%d %T')']'

command  Gcc terminal ++shell set $1 `echo "%" | sed 's/\.c//g'` ;gcc -o $1 "%"
command  -nargs=* GccAndFire terminal ++shell set $1 `echo "%" | sed 's/\.c//g'` ;gcc -o $1 "%" && ./$1 <args>
command  GccAndGdb terminal ++shell set $1 `echo "%" | sed 's/\.c//g'` ;gcc -o $1 "%" -g && gdb ./$1

" Simple version of `:s`
command  -nargs=+ Sub call Substitute(<f-args>)
function! Substitute( ... )
    if a:0 != 2
        echo "Need two args"
        return
    endif
    execute printf('%%substitute/%s/%s/g', a:1, a:2)
endfunction

" wincmd p ==> <C-w> p
command -nargs=1 -complete=file View  execute 'vsplit' <q-args> | wincmd p

command -nargs=0 Bdothers bufdo if bufname('%') != bufname(expand('#')) | bd | endif

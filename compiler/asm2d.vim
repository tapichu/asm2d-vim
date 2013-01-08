" Vim compiler file
" Compiler:         asm2d Compiler
" Maintainer:       Eduardo López Biagi <eduardo.biag@gmail.com>

if exists("current_compiler")
  finish
endif
let current_compiler = "asm2d"

let s:cpo_save = &cpo
set cpo&vim

if !exists("g:asm2d_command")
    let g:asm2d_command = 'asm2d'
endif

execute "CompilerSet" "makeprg=" . g:asm2d_command . "\\ %"
CompilerSet shellpipe=2>&1\ \|\ tee\ %s;exit\ \${PIPESTATUS[0]}
CompilerSet errorformat=
    \ERROR:\ %m\ (at\ line:\ %l),
    \WARNING:\ %m\ (at\ line:\ %l)

let &cpo = s:cpo_save
unlet s:cpo_save

if !exists("g:asm2d_command")
    let g:asm2d_command = 'asm2d'
endif

silent execute "setlocal" "makeprg=" . g:asm2d_command . "\\ %"
nnoremap <buffer> <localleader>m :call asm2d#running#Asm2dShowMifFile()<cr>

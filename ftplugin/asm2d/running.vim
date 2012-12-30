if !exists("g:asm2d_command")
    let g:asm2d_command = 'asm2d'
endif

execute "setlocal" "makeprg=" . g:asm2d_command . "\\ %"

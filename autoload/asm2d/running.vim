let g:quickfix_is_open = 0

function! OpenQuickFixWindow()
    let g:quickfix_return_to_window = winnr()
    copen
    let g:quickfix_is_open = 1
endfunction

function! asm2d#running#Asm2dCompileAndShowMifFile()
    execute "write"
    let filename = expand('%:r') . ".mif"
    let buff_num = bufwinnr(filename)

    silent execute "make" g:asm2d_make_params

    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    endif

    if v:shell_error
        call OpenQuickFixWindow()
    else
        let messages = getqflist()
        if g:asm2d_show_warnings && len(messages) > 0
            call OpenQuickFixWindow()
            wincmd p
        endif

        " Don't open a new window if the file is already open
        if buff_num >= 0
            silent execute buff_num . "wincmd w"
            edit
        else
            silent execute "vsplit" filename
        endif
    endif
endfunction

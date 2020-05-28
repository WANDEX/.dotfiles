""" goyo.vim
" configuration for the plugin junegunn/goyo.vim

function! s:goyo_enter()
    set noshowcmd
    set scrolloff=999
    let b:airline_disable_statusline = 1
    Limelight
endfunction

function! s:goyo_leave()
    set showcmd
    set scrolloff=5
    hi Normal guibg=NONE ctermbg=NONE
    Limelight!
endfunction

aug goyo_enter_leave
    au!
    au User GoyoEnter nested call <SID>goyo_enter()
    au User GoyoLeave nested call <SID>goyo_leave()
aug END

nnoremap <silent> <localleader>gy :Goyo<CR>


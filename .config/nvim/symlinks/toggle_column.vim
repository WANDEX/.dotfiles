"ln -sr ~/.config/nvim/symlinks/toggle_column.vim ~/.local/share/nvim/site/plugin/toggle_column.vim
let s:enabled = 1

function! ToggleColumn()
    if s:enabled
        let w:m1=matchadd('ErrorMsg', '\%81v\+', -1)
        let w:m2=matchadd('ErrorMsg', '\%121v\+', -1)
        let s:enabled = 0
    else
        "call matchdelete(w:m1)
        "call matchdelete(w:m2)
        call clearmatches()
        let s:enabled = 1
    endif
endfunction

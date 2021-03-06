""" functions.vim
""" function definitions

" reload vim configuration
if !exists('*ReloadConfig')
    function! ReloadConfig()
        echom 'Reload configuration...'
        source $cfg
    endfunction
    command! ReloadConfig call ReloadConfig()
endif

" help to right
fu! ILikeHelpToTheRight()
    if !exists('w:help_is_moved') || w:help_is_moved != "right"
        wincmd L
        let w:help_is_moved = "right"
    endif
endf

" open help in full-window view. If current buffer is not empty, open a new tab
fu! HelpTab(...)
    let cmd = 'tab help %s'
    if bufname('%') ==# '' && getline(1) ==# ''
        let cmd = 'help %s | only'
    endif
    exec printf(cmd, join(a:000, ' '))
endf
command! -nargs=* -complete=help H call HelpTab(<q-args>)

" toggle colored column at lines which character length exceed N
fu! ColumnToggle()
    if exists('w:longLineS')
        "silent! call clearmatches()
        silent! call matchdelete(w:longLineS)
        silent! call matchdelete(w:longLineB)
        unlet! w:longLineS w:longLineB
        echo '[OFF] too long columns highlight.'
    else
        let w:longLineS=matchadd('ErrorMsg', '\%81v\+', -1)
        let w:longLineB=matchadd('ErrorMsg', '\%121v\+', -1)
        echo '[ON] too long columns highlight.'
    endif
endf

" open a file in a new vim instance
fu! LaunchVimInstance(...)
    let l:paths = join(a:000, ' ')
    exec 'silent! !$TERMINAL -e /bin/env nvim ' . l:paths
endf
command! -count -nargs=* LaunchVimInstance  call LaunchVimInstance(<q-args>)

" convert the current tab to a new vim instance
fu! TabToNewWindow()
    let l:quit = 0
    let l:path = expand('%:p')
    if l:path ==# ''
        echom 'No file in buffer'
        return
    endif
    if &modified
        echom 'Write file before moving to new window?'
        echohl ErrorMsg | echom 'Unsaved changes will be lost!' | echohl None
        while 1
            let choice = inputlist(['1: Yes', '2: No', '3: Cancel'])
            if choice > 3
                redraw!
                echohl WarningMsg | echo 'Please enter a number between 1 and 3' | echohl None
                continue
            elseif choice == 0 || choice == 3
                return
            elseif choice == 1
                write
            endif
            break
        endwhile
    endif
    try
        confirm pclose!
        confirm close!
    catch
        echom 'This is the last window. Quit vim after opening new window?'
        while 1
            let choice = inputlist(['1: Yes', '2: No', '3: Cancel'])
            if choice > 3
                redraw!
                echohl WarningMsg | echo 'Please enter a number between 1 and 3' | echohl None
                continue
            elseif choice == 0 || choice == 3
                return
            elseif choice == 1
                let l:quit = 1
            endif
            confirm enew!
            break
        endwhile
    endtry
    call LaunchVimInstance(l:path)
    if l:quit == 1
        confirm quit!
    endif
endf

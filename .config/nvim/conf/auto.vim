""" auto.vim
""" autogroups and autocommands
"*****************************************************************************
" autocmd
"*****************************************************************************
if !exists('autocommands_loaded')
    let autocommands_loaded = 1

    aug HelpPages
        au!
        au FileType help nested call ILikeHelpToTheRight()
    aug END

    aug i3config_ft_detection
        au!
        au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
    aug END

    aug cursorline_group
        au!
        hi cursorline cterm=none term=none
        au WinEnter * setlocal cursorline
        au WinLeave * setlocal nocursorline
        hi CursorLine guibg=#333333 guifg=none
    aug END

    " close loclist - window when buffer is closed
    aug CloseLoclistWindowGroup
        au!
        au QuitPre * if empty(&buftype) | lclose | endif
    aug END

    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    aug LastKnownCursorPosition
        au!
        au BufReadPost *
        \ if &ft != 'gitcommit' &&  line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
    aug END

    " hide status line if vim-which-key plugin pop-up is shown
    aug WhichKeyHideStatusline
        au! FileType which_key
        au  FileType which_key set laststatus=0 noshowmode noruler
        \| au BufLeave <buffer> set laststatus=2 showmode ruler
    aug END

    " Disables automatic commenting on newline:
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " automatically deletes all trailing whitespace on save.
    au BufWritePre * %s/\s\+$//e

    " run xrdb whenever Xresources are updated.
    au BufWritePost *Xresources !xrdb %

    " update binds when sxhkdrc is updated.
    au BufWritePost *sxhkdrc !pkill -USR1 sxhkd

    " fix in case of memory leak vim issue. Should be at the end.
    au BufWinLeave * call clearmatches()
endif


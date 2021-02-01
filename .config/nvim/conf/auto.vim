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

    " hide status line if vim-which-key plugin pop-up is shown
    aug WhichKeyHideStatusline
        au! FileType which_key
        au  FileType which_key set laststatus=0 noshowmode noruler
        \| au BufLeave <buffer> set laststatus=2 showmode ruler
    aug END

    " Disables automatic commenting on newline:
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " run xrdb whenever Xresources are updated.
    au BufWritePost \(*/.Xresources\|*/xres/*\) !xrdb ~/.Xresources

    " update binds when sxhkdrc is updated.
    au BufWritePost *sxhkdrc !pkill -USR1 sxhkd

    " Have dwmblocks automatically recompile and run when you edit this file in
    au BufWritePost ~/source/forks/luke/dwmblocks/config.h !cd ~/source/forks/luke/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

    " fix in case of memory leak vim issue. Should be at the end.
    au BufWinLeave * call clearmatches()
endif


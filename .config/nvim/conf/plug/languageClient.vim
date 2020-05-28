""" LanguageClient neovim by autozimu
" configuration for the plugin autozimu/LanguageClient-neovim

set hidden
let g:LanguageClient_serverCommands    = {
\   'python': ['pyls'],
\   }

"\   'python': ['/usr/local/bin/pyls'],

let g:LanguageClient_changeThrottle    = 5

" linters and fixers are from other plugins, no need in extra gutter signs!
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_autoStart         = 1 " Automatically start language servers.


aug LanguageClient_config
    au!
    au User LanguageClientStarted setlocal signcolumn=yes
    au User LanguageClientStopped setlocal signcolumn=auto
aug END

"nnoremap <silent><C-K> :call LanguageClient_textDocument_hover()<CR>
"nnoremap <buffer><silent>gdv <c-w>v:call LanguageClient_textDocument_definition()<CR>
"nnoremap <buffer><silent>gdh <c-w>s:call LanguageClient_textDocument_definition()<CR>
"nnoremap <buffer><silent>gdt :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent><Leader>R :call LanguageClient_textDocument_rename()<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> KK :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F6> :call LanguageClient#textDocument_rename()<CR>


""" :h vim-which-key
" configuration for the plugin liuchengxu/vim-which-key

" Executes native commands if keymap is not defined.
" For example, you can use `:WhichKey 'g'` and get `gg` work correct
let g:which_key_fallback_to_native_key = 1

"" Define prefix dictionary
let g:which_key_map =  {}
let g:which_key_map_local =  {}

call which_key#register(mapleader, "g:which_key_map")
call which_key#register(maplocalleader, "g:which_key_map_local")

"" vim-which-key
nnoremap <silent> <leader>         :WhichKey       mapleader<cr>
vnoremap <silent> <leader>         :WhichKeyVisual mapleader<cr>
nnoremap <silent> <localleader>    :WhichKey       maplocalleader<cr>
vnoremap <silent> <localleader>    :WhichKeyVisual maplocalleader<cr>
nnoremap <silent> g                :WhichKey       'g'<cr>
vnoremap <silent> g                :WhichKeyVisual 'g'<cr>
nnoremap <silent> <leader><leader> :WhichKey       nr2char(getchar())<cr>
vnoremap <silent> <leader><leader> :WhichKeyVisual nr2char(getchar())<cr>

""" create menus not based on existing mappings -> define new mappings

""" LanguageClient
let g:which_key_map.l = {
\ 'name' : '+lsp',
\ 'c' : {
    \ 'name': '+code',
    \ 'l' : ['LanguageClient#textDocument_codeLens()'       , 'code lens']                  ,
    \ 'a' : ['LanguageClient#handleCodeLensAction()'        , 'code lens action']           ,
    \ 'A' : ['LanguageClient#textDocument_codeAction()'     , 'code action']                ,
    \ },
\ 'C' : ['LanguageClient#clearDocumentHighlight()'          , 'clear highlighting']         ,
\ 'e' : ['LanguageClient#explainErrorAtPoint()'             , 'explain this error']         ,
\ 'f' : {
    \ 'name': '+format',
    \ 'd' : ['LanguageClient#textDocument_formatting()'     , 'format document']            ,
    \ 'l' : ['LanguageClient#textDocument_rangeFormatting()', 'format selected lines']      ,
    \ },
\ 'g' : {
    \ 'name': '+goto',
    \ 'd' : ['LanguageClient#textDocument_definition()'     , 'definition']                 ,
    \ 'i' : ['LanguageClient#textDocument_implementation()' , 'implementation']             ,
    \ 't' : ['LanguageClient#textDocument_typeDefinition()' , 'type-definition']            ,
    \ },
\ 'h' : ['LanguageClient#textDocument_hover()'              , 'hover']                      ,
\ 'H' : ['LanguageClient#textDocument_documentHighlight()'  , 'highlight']                  ,
\ 'm' : ['LanguageClient_contextMenu()'                     , 'menu']                       ,
\ 'r' : ['LanguageClient#textDocument_references()'         , 'references']                 ,
\ 'R' : ['LanguageClient#textDocument_rename()'             , 'rename']                     ,
\ 's' : ['LanguageClient#textDocument_documentSymbol()'     , 'document-symbol']            ,
\ 'w' : {
    \ 'name': '+workspace',
    \ 'e' : ['LanguageClient#workspace_applyEdit()'         , 'apply a workspace edit']     ,
    \ 'c' : ['LanguageClient#workspace_executeCommand()'    , 'execute a workspace command'],
    \ 's' : ['LanguageClient#workspace_symbol()'            , 'list of projects symbols']   ,
    \ },
\ }

""" change description text in which-key pop-up menu on already existing mappings
"let g:which_key_map_local.l = {
"\ 'name' : '+local',
"\ 'c' : 'context-menu' ,
"\ }


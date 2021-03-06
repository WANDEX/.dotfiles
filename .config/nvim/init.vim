""" init.vim
"///////////////////////////////////////////////////////////////////////////////
"////______//__//////__//______//__________////__//////__//______//__//////__///
"/////__////____////__////__////////__////////__//////__////__////____//____////
"////__////__//__//__////__////////__////////__//////__////__////__//__//__/////
"///__////__////____////__////////__//////////__//__//////__////__//////__//////
"______//__//////__//______//////__//////__////__//////______//__//////__///////
"///////////////////////////////////////////////////////////////////////////////

let $cfg   = expand('<sfile>:p')
let $cfgd  = stdpath('config')
let $data  = stdpath('data')
let $cache = stdpath('cache')

" DO NOT SORT LINES ABOVE PLUG RELATED FILES
let g:nvim_config_files = [
    \ 'conf/plugins.vim',
    \ 'conf/settings.vim',
    \ 'conf/functions.vim',
    \ 'conf/mappings.vim',
    \ 'conf/auto.vim',
    \ 'conf/plug/airline.vim',
    \ 'conf/plug/autoPairs.vim',
    \ 'conf/plug/cheat.vim',
    \ 'conf/plug/colorizer.vim',
    \ 'conf/plug/deoplete.vim',
    \ 'conf/plug/echodoc.vim',
    \ 'conf/plug/editorconfig.vim',
    \ 'conf/plug/goyo.vim',
    \ 'conf/plug/highlightedyank.vim',
    \ 'conf/plug/indentLine.vim',
    \ 'conf/plug/jedi-vim.vim',
    \ 'conf/plug/languageClient.vim',
    \ 'conf/plug/leaderF.vim',
    \ 'conf/plug/limelight.vim',
    \ 'conf/plug/listToggle.vim',
    \ 'conf/plug/magit.vim',
    \ 'conf/plug/markdown-preview.vim',
    \ 'conf/plug/neoformat.vim',
    \ 'conf/plug/neomake.vim',
    \ 'conf/plug/nerdtree.vim',
    \ 'conf/plug/semshi.vim',
    \ 'conf/plug/translate.vim',
    \ 'conf/plug/vCoolor.vim',
    \ 'conf/plug/vim-better-whitespace.vim',
    \ 'conf/plug/vim-gtfo.vim',
    \ 'conf/plug/vim-textobj-user.vim',
    \ 'conf/plug/vim-visual-multi.vim',
    \ 'conf/plug/vim-which-key.vim',
    \ ]

function! s:cpath(...)
  return join([$cfgd] + a:000, '/')
endfunction

function! s:init()
for l:f in g:nvim_config_files
  let l:p = s:cpath(l:f)
  try
    exec 'source ' . l:p
  catch
    echom 'init.vim: failed loading ' . l:p
  endtry
endfor
endfunction

call s:init()

"*****************************************************************************
" END OF FILE
"*****************************************************************************
" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

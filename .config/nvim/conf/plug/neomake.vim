""" neomake
" configuration for the plugin neomake/neomake

" change warning signs and color, see https://goo.gl/eHcjSq
" highlight NeomakeErrorMsg ctermfg=227 ctermbg=237

"let g:neomake_warning_sign={'text': 'W', 'texthl': 'NeomakeWarningSign'}
"let g:neomake_error_sign={'text': 'E'}

let g:neomake_error_sign = {
    \ 'text': 'E',
    \ 'texthl': 'NeomakeErrorSign',
    \ }

let g:neomake_warning_sign = {
    \ 'text': 'W',
    \ 'texthl': 'NeomakeWarningSign',
    \ }

let g:neomake_message_sign = {
    \ 'text': 'M',
    \ 'texthl': 'NeomakeMessageSign',
    \ }

let g:neomake_info_sign = {
    \ 'text': 'I',
    \ 'texthl': 'NeomakeInfoSign'
    \ }

let g:neomake_python_pylint_maker = {
    \ 'args': [
    \ '-d', 'C0103, C0111',
    \ '-f', 'text',
    \ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
    \ '-r', 'n'
    \ ],
    \ 'errorformat':
    \ '%A%f:%l:%c:%t: %m,' .
    \ '%A%f:%l: %m,' .
    \ '%A%f:(%l): %m,' .
    \ '%-Z%p^%.%#,' .
    \ '%-G%.%#',
    \ }

"let g:neomake_python_enabled_makers = ['pylint', 'flake8', 'mypy']
let g:neomake_python_enabled_makers = ['flake8']
" whether to open quickfix or location list automatically
let g:neomake_open_list = 0


function! MyOnBattery()
    if has('unix')
        " if AC exist (without this, will throw error on desktop pc)
        if !empty(glob('/sys/class/power_supply/AC'))
            return readfile('/sys/class/power_supply/AC/online') == ['0']
        endif
    elseif has('macunix')
        return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
    endif
    return 0
endfunction

if MyOnBattery()
    call neomake#configure#automake('w')
else
    call neomake#configure#automake('nrwi', 500)
endif


""" vim-visual-multi
" configuration for the plugin mg979/vim-visual-multi

let g:VM_maps                       = {}
let g:VM_mouse_mappings             = 1

"let g:VM_default_mappings = 0

let g:VM_maps['Find Under']         = '<C-j>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-j>'           " replace visual C-n
let g:VM_maps["Select Cursor Down"] = '<C-n>'
let g:VM_maps["Select Cursor Up"]   = '<C-e>'

"let g:VM_maps["Select l"]           = '<C-i>'           " start selecting left
"let g:VM_maps["Select h"]           = '<C-H>'           " start selecting right
"let g:VM_maps["Select l"]           = '<S-Right>'       " start selecting left
"let g:VM_maps["Select h"]           = '<S-Left>'        " start selecting right

let g:VM_maps["i"]                  = 'k'


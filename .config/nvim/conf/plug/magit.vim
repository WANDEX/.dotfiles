""" vimagit
" configuration for the plugin jreybert/vimagit

" disable default magit mapping
let g:magit_show_magit_mapping=''
" redefining E-edit -> O-open
let g:magit_edit_mapping='O'
let g:magit_jump_next_hunk='<C-N>'
let g:magit_jump_prev_hunk='<C-E>'
let g:magit_commit_title_limit=79
let g:magit_scrolloff=5

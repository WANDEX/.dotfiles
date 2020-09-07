"*****************************************************************************
"" Core Mappings For Colemak
"*****************************************************************************
"" hjkl remapped for colemak to
"" hnei i.e. left/down/up/right

" insert mode and modifier inside
nnoremap k i|onoremap k i|vnoremap k i|xnoremap k i

" Screen bottom
nnoremap B L

" Look for next occurrence of {char}
nnoremap l f|onoremap l f|vnoremap l f
nnoremap L F|onoremap L F|vnoremap L F

" Forward towards the end of a word
nnoremap f e|onoremap f e|vnoremap f e
nnoremap F E|onoremap F E|vnoremap F E

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
"nnoremap jj nzzzv
"nnoremap je Nzzzv
nnoremap <Enter> nzzzv
nnoremap <BS> Nzzzv

" Move screen one page
nnoremap N <C-f>
nnoremap E <C-b>

" Move windows with C-Direction
nnoremap <C-W>n <C-W>j
nnoremap <C-W>e <C-W>k
nnoremap <C-W>h <C-W>h
nnoremap <C-W>i <C-W>l
"map <C-N> <C-W>j
"map <C-E> <C-W>k
"map <C-H> <C-W>h
"map <C-I> <C-W>l

nnoremap n j|xnoremap n j|onoremap n j|vnoremap n j
nnoremap e k|xnoremap e k|onoremap e k|vnoremap e k
nnoremap i l|xnoremap i l|onoremap i l|vnoremap i l

" popupmenu-keys
inoremap <C-l> <Down>
inoremap <C-u> <Up>

inoremap <silent><expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <silent><expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <silent><expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <silent><expr> <Esc>      pumvisible() ? "<C-e><Esc>" : "<Esc>"
inoremap <silent><expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <silent><expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"*****************************************************************************
"" Extra Mappings
"*****************************************************************************

" fold mappings
nnoremap <silent>zn zczjza
nnoremap <silent>ze zczkza

" Move to next/previous bufpage :bnext,:bprev
nnoremap <silent>]b :bn<CR>
nnoremap <silent>[b :bp<CR>

" To navigate to the previous or next trailing whitespace
nnoremap ]w :NextTrailingWhitespace<CR>
nnoremap [w :PrevTrailingWhitespace<CR>

" Neosnippet. It must be "imap" and "smap".
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" deoplete + neosnippet + autopairs changes
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
imap <expr><CR> pumvisible() ? deoplete#close_popup() : "\<CR>\<Plug>AutoPairsReturn"

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

nnoremap <F3> :TagbarToggle<CR>
nnoremap <Leader>tb :TagbarToggle<CR>

nnoremap <F4> :set relativenumber!<CR>

" run current python buffer in nvim term
"nnoremap <F5><F5> :vs <CR> :term python % <CR>
"nnoremap <F5>h :15sp <CR> :term python % <CR>

" toggle spell check
nnoremap <F7> :setlocal spell! spelllang=en_us<CR>

" see encoding-values
menu Encoding.utf-8         :e ++enc=utf-8<CR>
menu Encoding.latin1        :e ++enc=latin1<CR>
menu Encoding.default       :e ++enc=default<CR>
menu Encoding.koi8-r        :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251  :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866         :e ++enc=cp866  ++ff=dos<CR>
" use TAB to cycle between menu variants
nnoremap <F8> :emenu Encoding.

" re-indent whole file / fix indentation
nnoremap <F12> gg=G<C-o><C-o>

" delete current buffer
nnoremap <Leader>dd :bd!<CR>

" open bash terminal
nnoremap <Leader>tm :sp term://bash <CR>

" easier terminal  Esc
tnoremap <Esc> <C-\><C-n>

" open in a new tab provided file
nnoremap <Leader>tn :tabnew ~/

"swap top/bottom or left/right split
nnoremap <Leader>r <c-w>r

"Close every window in the current tab view but the current one
nnoremap <Leader>O <C-W>o

" Search and Replace
nnoremap <Leader>s :%s///gc<Left><Left>
vnoremap <Leader>s :s///gc<Left><Left>

" sort visual selection
vnoremap <Leader>S :sort<CR>

" easier moving of code blocks, without losing of selection block
vnoremap < <gv
vnoremap > >gv

" Easy align interactive
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign in normal/visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign)| xmap ga <Plug>(EasyAlign)

" Add a semicolon to the current line
nnoremap <Leader>; m'A;<ESC>`'

" Run commands that require an interactive shell
"nnoremap <Leader>r :RunInInteractiveShell<Space>

" <Leader>b - search buffers, <Leader>f - search files
" LeaderF find files in provided location
nnoremap <Leader>F :LeaderfFile /

" yank path of current file to system clipboard
nnoremap <silent> <Leader>yp :let @+ = expand("%:p")<CR>:echom "Copied " . @+<CR>

" open tab in new terminal instance
nnoremap <Leader>W :call TabToNewWindow()<CR>

" Reload vim configuration
nnoremap <localleader>rc :ReloadConfig<CR>

" Clear trailing whitespace
nnoremap <localleader>cw :%s/\s\+$//g<CR>:nohlsearch<CR>

" Colorizer toggle color highlight
nnoremap <localleader>Ct :ColorToggle<CR>

" toggle colored column at lines which character length exceed N
nnoremap <silent> <localleader>ct :call ColumnToggle()<CR>

" unmap mouse wheel up
nmap <ScrollWheelUp> <nop>
imap <ScrollWheelUp> <nop>
vmap <ScrollWheelUp> <nop>
" unmap mouse wheel down
nmap <ScrollWheelDown> <nop>
imap <ScrollWheelDown> <nop>
vmap <ScrollWheelDown> <nop>

" Disable C-z suspend
map  <C-z> <nop>
map! <C-z> <nop>

" Disable Ex mode
nnoremap Q <nop>


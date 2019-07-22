"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
"Plug 'brooth/far.vim'
Plug 'mboughaba/i3config.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

"Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'
Plug 'KabbAmine/vCoolor.vim'

Plug 'davidhalter/jedi-vim'
Plug 'sbdchd/neoformat'
Plug 'Valloric/ListToggle'
Plug 'metakirby5/codi.vim'
"Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neoinclude.vim'

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'neomake/neomake'

call plug#end()

"*****************************************************************************
"" General
"*****************************************************************************
set number relativenumber       " Show relative line numbers
set linebreak                   " Break lines at word (requires Wrap lines)
set showbreak=>                 " Wrap-broken line prefix
set showmatch                   " Highlight matching brace
set visualbell                  " Use visual bell (no beeping)

set hlsearch                    " Highlight all search results
set ignorecase                  " Always case-insensitive
set smartcase                   " Enable smart-case search
set incsearch                   " Searches for strings incrementally

set autoindent                  " Auto-indent new lines
set smartindent                 " Enable smart-indent
set smarttab                    " Enable smart-tabs
set shiftwidth=4                " Number of auto-indent spaces
set softtabstop=4               " Number of spaces per Tab
set shiftround                  " Round the indentation nearest to shiftwidth
set expandtab                   " Use spaces instead of tabs

set splitbelow                  " Horizontal split below current.
set splitright                  " Vertical split to right of current.

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1,cp1250
set nobackup
set nowritebackup
set noswapfile

set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

set laststatus=2                " Always display the status bar.
set ruler                       " Show row and column ruler information
set scrolloff=5                 " Show next 3 lines while scrolling.
set sidescrolloff=5             " Show next 5 columns while side-scrolling.

set showcmd                     " Display incomplete commands
set wildmenu                    " Command line tab complete options as a menu.
set wildmode=list,full  " Enable autocompletion
set wildignore+=*.pyc,*_build/*,*/coverage/*,*.swp

set completeopt=menuone         " Somehow it fixes flickering in autocomplete
set completeopt+=noinsert
"set completeopt-=preview

set listchars=tab:>\ ,trail:~\,extends:>,precedes:<,nbsp:+
set list                        " Show problematic characters.
set nojoinspaces                " Use one space, not two, after punctuation.
set clipboard+=unnamedplus
set cursorline
set timeoutlen=2000

"*****************************************************************************
"" Advanced
"*****************************************************************************
colorscheme vim-monokai-tasty
set t_Co=256
set termguicolors
hi Normal guibg=NONE ctermbg=NONE

"let mapleader="\\"
let mapleader="\<SPACE>"
let maplocalleader="\\"


" Enable file type detection.
"filetype plugin on

if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    "syntax on
"endif

"*****************************************************************************
"" Core Mappings For Colemak
"*****************************************************************************
"" hjkl remapped for colemak to
"" hnei i.e. left/down/up/right

" insert mode and modifier inside
nnoremap k i|onoremap k i

" Screen bottom
nnoremap B L

" Look for next occurrence of {char}
nnoremap l f|onoremap l f
nnoremap L F|onoremap L F

" Forward towards the end of a word
nnoremap f e|onoremap f e
nnoremap F E|onoremap F E

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap jj nzzzv
nnoremap je Nzzzv

" Move screen one page
nnoremap N <C-f>
nnoremap E <C-b>

" Move windows with C-Direction
map <C-N> <C-W>j
map <C-E> <C-W>k
map <C-H> <C-W>h
map <C-I> <C-W>l

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

" Move to next/previous bufpage :bnext,:bprev
nnoremap <silent> ]b :bn<CR>
nnoremap <silent> [b :bp<CR>

" Neosnippet. It must be "imap" and "smap".
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"


" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

nnoremap <silent> <C-K> :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gdl :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" run current python buffer in nvim term
nnoremap <F5><F5> :vs <CR> :term python % <CR>
nnoremap <F5>h :15sp <CR> :term python % <CR>

" toggle spell check
nnoremap <F7> :setlocal spell! spelllang=en_us<CR>

" delete current buffer
nnoremap <Leader>dd :bd!<CR>
" open bash terminal
nnoremap <Leader>tt :sp term://bash
" easier terminal  Esc
tnoremap <Esc> <C-\><C-n>

" open in a new tab provided file
nnoremap <Leader>tn :tabnew ~/
" place the contents of a command into a new tab
"nnoremap <Leader>tr :tabnew | r !\

"swap top/bottom or left/right split
nnoremap <leader>r <c-w>r

"Break out current window into a new tabview
nnoremap <Leader>tt <C-W>T

"Close every window in the current tabview but the current one
nnoremap <Leader>O <C-W>o

" Search and Replace
nnoremap <Leader>s :%s///gc<Left><Left>

" sort
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks, without losing of selection block
vnoremap < <gv
vnoremap > >gv

" Add a semicolon to the current line
nnoremap <Leader>; m'A;<ESC>`'

" Nerdtree mappings. nt = toggle, nf = find.
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

" Run commands that require an interactive shell
"nnoremap <Leader>r :RunInInteractiveShell<Space>

" Open file menu
"nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
"nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
"nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Source nvim config init.vim with <Leader>vc
nnoremap <Leader>vc :source ~/.config/nvim/init.vim<CR>:echo "rel-ed .vim"<CR>

" Clear trailing whitespace with <localleader>cw
nnoremap <localleader>cw :%s/\s\+$//g<CR>:nohlsearch<CR>

" Colorizer toggle color highlight
nnoremap <localleader>gct :ColorToggle<CR>

" unmap mouse wheel
nmap <ScrollWheelUp> <nop>
imap <ScrollWheelUp> <nop>
vmap <ScrollWheelUp> <nop>

nmap <ScrollWheelDown> <nop>
imap <ScrollWheelDown> <nop>
vmap <ScrollWheelDown> <nop>

"*****************************************************************************
" autocmd
"*****************************************************************************
if has('autocmd')
    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    au BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

    " help to right
    function! ILikeHelpToTheRight()
        if !exists('w:help_is_moved') || w:help_is_moved != "right"
            wincmd L
            let w:help_is_moved = "right"
        endif
    endfunction
    aug HelpPages
        au FileType help nested call ILikeHelpToTheRight()
    aug END

    aug i3config_ft_detection
        au!
        au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
    aug end

    aug LanguageClient_config
        au!
        au User LanguageClientStarted setlocal signcolumn=yes
        au User LanguageClientStopped setlocal signcolumn=auto
    aug END

    aug cursorline_group
        hi cursorline cterm=none term=none
        au WinEnter * setlocal cursorline
        au WinLeave * setlocal nocursorline
        hi CursorLine guibg=#333333 guifg=none
    aug END

    " Disables automatic commenting on newline:
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " close loclist - window when buffer is closed
    aug CloseLoclistWindowGroup
        au!
        au QuitPre * if empty(&buftype) | lclose | endif
    aug END

    " close NERDTree
    au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") &&
                \ b:NERDTree.isTabTree()) | q | endif

    " color characters > 80 or draw line at 80 characters :TODO fix condition
    "if exists('+colorcolumn')
        "" characters to the end of a line
        ""au BufEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
        "" single character
        "au BufEnter * let w:m2=matchadd('ErrorMsg', '\%81v\+', -1)
    "else
        "set colorcolumn=80,120
    "endif

    " highlight tabs that not at the beginning and trailing whitespace.
    hi ExtraWhitespace ctermbg=Gray guibg=Gray
    au BufEnter * let ew=matchadd("ExtraWhitespace", '\s\+$\| \+\ze\t')

    " automatically deletes all trailing whitespace on save.
    au BufWritePre * %s/\s\+$//e

    " run xrdb whenever Xresources are updated.
    au BufWritePost *Xresources !xrdb %


    " fix in case of memory leak vim issue. Should be at the end.
    au BufWinLeave * call clearmatches()
endif

"*****************************************************************************
" Plug related
"*****************************************************************************
" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
    " unicode symbols
    let g:airline#extensions#tabline#left_sep       = ' '
    let g:airline#extensions#tabline#left_alt_sep   = '|'
    let g:airline_left_sep                          = ' '
    let g:airline_left_alt_sep                      = '»'
    let g:airline_right_sep                         = ' '
    let g:airline_right_alt_sep                     = '«'
    let g:airline#extensions#branch#prefix          = '⤴' "➔, ➥, ⎇
    let g:airline#extensions#readonly#symbol        = '⊘'
    let g:airline#extensions#linecolumn#prefix      = '¶'
    let g:airline#extensions#paste#symbol           = 'ρ'

    let g:airline_symbols.linenr                    = '␊'
    let g:airline_symbols.linenr                    = '␤'
    let g:airline_symbols.linenr                    = '¶'
    let g:airline_symbols.branch                    = '⎇'
    let g:airline_symbols.paste                     = 'ρ'
    let g:airline_symbols.paste                     = 'Þ'
    let g:airline_symbols.paste                     = '∥'
    let g:airline_symbols.whitespace                = 'Ξ'
else
    " powerline symbols
    let g:airline#extensions#tabline#left_sep       = ''
    let g:airline#extensions#tabline#left_alt_sep   = ''
    let g:airline_left_sep                          = ''
    let g:airline_left_alt_sep                      = ''
    let g:airline_right_sep                         = ''
    let g:airline_right_alt_sep                     = ''
    let g:airline_symbols.branch                    = ''
    let g:airline_symbols.readonly                  = ''
    let g:airline_symbols.linenr                    = ''
    let g:airline_symbols.paste                     = 'ρ'
    let g:airline_symbols.whitespace                = 'Ξ'
endif

let g:lt_height = 10
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'


set hidden
let g:LanguageClient_serverCommands = {
\   'python': ['pyls'],
\   }
let g:LanguageClient_changeThrottle = 5
let g:LanguageClient_autoStart = 1 " Automatically start language servers.

let g:python3_host_prog = '/usr/bin/python'
let g:loaded_python_provider = 1                "disable python 2 support


let g:pymode = 1
let g:pymode_warnings = 0
"let g:pymode_paths = []
let g:pymode_trim_whitespaces = 0
let g:pymode_options = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_quickfix_maxheight = 10
let g:pymode_preview_height = &previewheight
let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_lint = 0
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_cwindow = 1
let g:pymode_lint_signs = 1
let g:pymode_rope = 1
let g:pymode_rope_show_doc_bind = 'gdr' "Show documentation for element under cursor
let g:pymode_rope_goto_definition_bind = 'gdd'
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-N>'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
let g:pymode_rope_extract_method_bind = '<C-c>rm'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'
let g:pymode_rope_use_function_bind = '<C-c>ru'
let g:pymode_rope_move_bind = '<C-c>rv'
let g:pymode_rope_change_signature_bind = '<C-c>rs'
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
let g:pymode_syntax_docstrings = g:pymode_syntax_all
let g:pymode_python = 'python3'


let g:neopairs#enable = 1

"call deoplete#custom#source('ale', 'rank', 999)
call deoplete#custom#source('_',
\   'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('_',
\   'sorters',  ['sorter_rank']) "or 'sorter_word'

" Use auto delimiter feature
call deoplete#custom#source('_', 'converters',
\  ['converter_auto_delimiter',
\   'converter_remove_overlap',
\   'converter_auto_paren'])

"call deoplete#custom#option('candidate_marks',
"\   ['1', '2', '3', '4', '5'])
"inoremap <expr>1       deoplete#insert_candidate(0)
"inoremap <expr>2       deoplete#insert_candidate(1)
"inoremap <expr>3       deoplete#insert_candidate(2)
"inoremap <expr>4       deoplete#insert_candidate(3)
"inoremap <expr>5       deoplete#insert_candidate(4)

call deoplete#custom#option({
\   'auto_complete_delay': 400,
\   'ignore_case': v:true,
\   'smart_case': v:true,
\   'max_list': 500,
\   'on_insert_enter': v:true,
\   'on_text_changed_i': v:true,
\   'refresh_always': v:false,
\   'prev_completion_mode': 'filter',
\   })
let g:deoplete#enable_at_startup = 1            " Use deoplete.
"let g:deoplete#delimiters = ['/','.']
let g:deoplete#sources#jedi#statement_length = 150 "Maximum length description
let g:deoplete#sources#jedi#enable_typeinfo = 1 " If 0 faster!
let g:deoplete#sources#jedi#show_docstring = 1  " if 1 causing comp. flickering
let g:deoplete#sources#jedi#python_path = '/usr/bin/python'
"let g:deoplete#sources#jedi#extra_path =
let g:deoplete#sources#jedi#ignore_errors = 0


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'

let g:indentLine_char = '┊' "│, ¦, ┆, ┊, ▏
let g:indentLine_conceallevel = 1

"let g:colorizer_startup = 0
let g:colorizer_fgcontrast = 0
let g:colorizer_nomap = 1
let g:colorizer_maxlines = 1000

let g:vcoolor_custom_picker = 'zenity --title "IC" --color-selection '
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map        = '<localleader>gcc'
let g:vcool_ins_rgb_map  = '<localleader>gcr'   " Insert rgb color.
let g:vcool_ins_hsl_map  = '<localleader>gch'   " Insert hsl color.
let g:vcool_ins_rgba_map = '<localleader>gcra'  " Insert rgba color.

let g:gruvbox_italicize_comments = 1
let g:gruvbox_italicize_strings = 1
let g:gruvbox_contrast_dark = 'soft'

" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

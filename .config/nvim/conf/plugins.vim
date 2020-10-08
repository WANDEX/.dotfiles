"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin('~/.local/share/nvim/plugged')
Plug 'jeffkreeftmeijer/vim-dim' " (Xresources) consistent term colors w invers
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'brooth/far.vim'

" syntax
Plug 'kovetskiy/sxhkd-vim'
Plug 'mboughaba/i3config.vim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-titlecase'
Plug 'farmergreg/vim-lastplace'

"" new text objects | more info: https://github.com/kana/vim-textobj-user/wiki
Plug 'kana/vim-textobj-user'    " CORE
Plug 'kana/vim-textobj-indent'  " ai/ii aI/iI
Plug 'kana/vim-textobj-line'    " al/il
Plug 'kana/vim-textobj-entire'  " ae/ie
Plug 'glts/vim-textobj-comment' " ac/ic aC
Plug 'kana/vim-textobj-diff'    " adh/idh
Plug 'bps/vim-textobj-python'   " af/if ac/ic | [pf / ]pf [pc / ]pc

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

"WOW
Plug 'mg979/vim-visual-multi'

Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

"Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'
Plug 'KabbAmine/vCoolor.vim'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'junegunn/vim-easy-align'
Plug 'sbdchd/neoformat'
Plug 'Valloric/ListToggle'
Plug 'metakirby5/codi.vim'

" python code folding
Plug 'kalekundert/vim-coiled-snake'
Plug 'Konfekt/FastFold'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neoinclude.vim'

Plug 'davidhalter/jedi-vim'

Plug 'voldikss/vim-translator'

" completions for Vim commands
Plug 'Shougo/neco-vim'
" for English word auto-completion
Plug 'deathlyfrantic/deoplete-spell'
" python3 completions
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'dbeniamine/cheat.sh-vim'

Plug 'liuchengxu/vim-which-key'

Plug 'neomake/neomake'

call plug#end()


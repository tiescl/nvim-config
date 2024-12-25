" :help option-list

" mouse mode, can be useful for resizing splits
set mouse=a
set termguicolors
set breakindent
set signcolumn=yes

" no backups
set undofile
set undodir=~/.vim/undodir
set updatetime=50
set noswapfile
set nobackup

" how much to wait before keymap completes
set timeoutlen=250

" Configure how new splits should be opened
set splitright
set splitbelow

" certain whitespace characters in the editor.
" :help 'list'
" :help 'listchars'
set list
set listchars=tab:>\ ,trail:·,nbsp:␣

" preview substitutions live
set inccommand=split

set scrolloff=8

" numbers
set number
set relativenumber
set ruler
"set colorcolumn=85

" misc
set showcmd
set noshowmode
set ttimeoutlen=25
set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20

" searching
set ignorecase
set smartcase
set nohlsearch
set incsearch

" tab options
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" netrw settings
let g:netrw_browse_split=0
let g:netrw_banner=0
let g:netrw_winsize=25

" dumb SQL
let g:ftplugin_sql_omni_key='<C-j>'

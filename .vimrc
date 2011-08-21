" general vim stuff

set sw=2         " shift width
set ts=2         " tabstop
set et           " expand tabs
set smarttab
set nocp         " no compatibility
set ru           " ruler
set sc           " show commands as they're typed
set wmnu         " wild menus for filename completion
set nowrap       " don't auto wrap
set ww=<,>,h,l   " let arrow keys, h, l move off ends of lines
set scrolloff=2  " show this many extra lines while scrolling
set hlsearch     " highlighed searches
set nohidden     " don't allow hidden unsaved buffers
set foldcolumn=0
set noincsearch             " Incremental search
set nolinebreak             " This displays long lines as wrapped at word boundries
set nobackup              " Don't keep a backup file
set writebackup
set textwidth=0           " Don't wrap words by default
set autochdir
set autoindent
colorscheme slate

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

filetype plugin indent on
syntax on


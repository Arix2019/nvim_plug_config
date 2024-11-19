" init.vim
call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Airline -> status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Branch info on staus bar (git)
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'

" Devicons
Plug 'ryanoasis/vim-devicons'

" syntax highlighting (várias linguagens)
Plug 'sheerun/vim-polyglot'

" NerdTree
Plug 'preservim/nerdtree'

" syntax highlighting nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()



" Catppuccin colorscheme
:colorscheme catppuccin



" Airline theme (status bar)
let g:airline_theme='catppuccin'



" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                 " Enable syntax highlight
set nu                    " Enable line numbers
set number relativenumber
set cursorline
set tabstop=2        " Show existing tab with 4 spaces width
set softtabstop=2    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any



" Remaps """"""""""
"
" NredTree
nnoremap <space>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Shortcuts for split navigation
map <C-Left> <C-w>h  
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l


" autocmd """"""""""
"
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree





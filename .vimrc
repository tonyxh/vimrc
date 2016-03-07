"Appearance
set number
set ruler
set hlsearch
set background=light
set noswapfile
"colorscheme solarized
colorscheme desert
syntax on

"Customize
let mapleader=","
inoremap jk <ESC>
vnoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>a :Ag<space>
nnoremap <leader>g :Git<space>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>r :set rnu!<cr>
nnoremap <leader>f /<C-r><C-w>
"Switch between tabs
nnoremap <C-h> <C-w>h
nnoremap <C-l> <c-w>l
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
"save and quit
inoremap <C-s> <ESC>:w<cr>
nnoremap <C-s> :w<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>w :q<cr>
"comments
nnoremap <leader>/ I#<esc>
vnoremap <leader>/ I#<esc>
"copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
"Move
nnoremap <C-e> $
nnoremap <C-b> ^


"key function
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=2

"vundle
filetype off

"set rtp+=$VIM/vimfiles/bundle/vundle/
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on

"search
set ignorecase
set smartcase

"plugins configure
let g:bookmark_sign='>>'

"xmllint
au FileType xml exe ":silent 1,$!xmllint \"%\" --format --recover"

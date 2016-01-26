"Appearance
set number
set ruler
set hlsearch
set background=light
colorscheme solarized
syntax on

"Customize
let mapleader=","
inoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>a :Ag<space>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>r :set rnu!<cr>
"comments
nnoremap <leader>/ I#<esc>
vnoremap <leader>/ I#<esc>

"key function
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=2

"vundle
filetype off

set rtp+=$VIM/vimfiles/bundle/vundle/

call vundle#rc('$VIM/vimfiles/bundle/')

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'Townk/vim-autoclose'

filetype plugin indent on

"copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"search
set ignorecase
set smartcase

"plugins configure
let g:bookmark_sign='>>'

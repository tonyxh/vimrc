set number
set ruler
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

filetype off

set rtp+=$VIM/vimfiles/bundle/vundle/

call vundle#rc('$VIM/vimfiles/bundle/')

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'

filetype plugin indent on

"copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

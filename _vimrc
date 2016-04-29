"Appearance
set number
set ruler
set hlsearch
set background=light
set noswapfile
colorscheme solarized
syntax on

"Customize
let mapleader=","
inoremap jk <ESC>
vnoremap jk <ESC>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>a :Ag<space>
nnoremap <leader>g :Git<space>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>r :set rnu!<cr>
nnoremap <leader>f /<C-r><C-w>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>dh :nohl<cr>
"Switch between splits 
nnoremap <C-h> <C-w>h
nnoremap <C-l> <c-w>l
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
"Tabs operation
nnoremap <leader>t :tabedit %<CR>
"save and quit
inoremap <C-s> <ESC>:w<cr>
nnoremap <C-s> :w<cr>
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
"Select
nnoremap <C-a> gg<S-v>G
"Search under selection
vnoremap // y/<C-R>"<CR>

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
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

filetype plugin indent on

"search
set ignorecase
set smartcase

"plugins configure
let g:bookmark_sign='>>'

"xmllint
au FileType xml exe ":silent 1,$!xmllint \"%\" --format --recover"

"cscope configuration
function! SetupCscope()
    echom "setup cscope"
    if(executable("cscope") && has("cscope") )
        echom "Found cscope executable"
        if(has('win32'))
            echom "Win32 platform detected"
            silent! execute "!dir /s /b *.cpp *.h *.py > cscope.files"
            silent! execute "!cscope -Rbq"
            if filereadable("cscope.out")
                echom "add cscope.out"
                execute "cs add cscope.out"
            else
                echom "cscope.out not found"
            endif
        endif
    else
        echom "Not Found executable"
    endif
    echom "Done"
endfunction

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

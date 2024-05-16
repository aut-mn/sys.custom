filetype plugin indent on
filetype off

syntax on

runtime! macros/matchit.vim

set backspace=indent,eol,start
set listchars=tab:▸\ ,eol:¬
set formatoptions=tcqrn1
set matchpairs+=<:>
set background=dark
set encoding=utf-8
set softtabstop=2
set textwidth=79
set laststatus=2
set nocompatible
set noshiftround
set shiftwidth=2
set scrolloff=3
set modelines=0
set ignorecase
set visualbell
set tabstop=2
set incsearch
set expandtab
set smartcase
set showmatch
set showmode
set hlsearch
set t_Co=256
set showcmd
set ttyfast
set hidden
set number
set wrap !
set ruler

nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
nnoremap / /\v
vnoremap / /\v
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>:set invfullscreen<CR>a

map <leader><space> :let @/=''<cr>
map <leader>l :set list!<CR>
map <leader>q gqip


let g:solarized_termcolors=256
let g:solarized_termtrans=1
" Don't forget! (noob)
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim -> ~/.vim/colors/
" colorscheme solarized

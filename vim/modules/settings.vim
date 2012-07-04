set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Remap <leader> to ,
let mapleader = ","

" handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Goodies
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Disable arrows
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

"Save buffer when focus is lost.
au FocusLost * :wa


" ',W' to strip whitespaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

inoremap jj <ESC>

" Open new vertical split window
nnoremap <leader>w <C-w>v<C-w>l

" Open .vimrc in a split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>


syntax on
set nocompatible
set ai
set hlsearch

" Reasonable (generic) tab settings.
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
set expandtab

" Vundle (vim script manager) stuff
filetype off  " required!
source ~/.vim/plugin/vundle.vim
filetype plugin indent on " required!

" I want NERDTree on the right
let g:NERDTreeWinPos = "right"

colorscheme badwolf

set undodir=~/.vim/tmp/undo
set directory=~/.vim/tmp/swap

source ~/.vim/modules/settings.vim
source ~/.vim/modules/coffee.vim

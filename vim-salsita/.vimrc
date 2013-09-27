set ruler
let mapleader = ","
set nocompatible

autocmd! FileType qf wincmd J

"fun! SetupVAM()
"  set runtimepath+=/Users/realyze/vim-addons/vim-addon-manager
"  call vam#ActivateAddons(["SuperTab", "vim-coffee-script", "JavaScript_syntax", "Color_Sampler_Pack", "Better_Javascript_Indentation"],{'auto_install' : 2})
"  " eg replace [] by ["github:YourName"] or ["matchit.zip","ttoc",".."]
"endf
"call SetupVAM()
" experimental: run after gui has been started [3]
" option1:  a;u VimEnter * call SetupVAM()
" option2:  au GUIEnter * call SetupVAM()
" call sample_vimrc_for_new_users#Load()

nmap <C-n> :NERDTree<CR>
let g:NERDTreeWinPos = "right"

syntax on
filetype off
filetype plugin on
filetype plugin indent on

let NERDTreeIgnore = ['\.pyc$']

let g:pylint_onwrite = 0

" Set up Vundle package manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Save when window loses focus.
au FocusLost * :wa

" make F1 act as escape, 'cause I hit it instead often.
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set smartcase
set ignorecase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set encoding=utf-8
set scrolloff=3
set autoindent
"set showmode
"set showcmd
"set hidden
"set wildmenu
"set wildmode=list:longest
"set visualbell
"set cursorline
"set ttyfast
"set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

inoremap jj <ESC>
" Shorthand for opening a vertical split.
nnoremap <leader>w <C-w>v<C-w>l

imap <C-J> <Plug>snipMateNextOrTrigger

set directory=${HOME}/.vim/swap_files
set backupdir=${HOME}/.vim/backup_files
set undodir=${HOME}/.vim/undo_files

" Vundle bundles...
Bundle 'ack.vim'
Bundle 'gundo'
Bundle 'Command-T'
Bundle 'Syntastic'
Bundle 'EasyMotion'
Bundle 'Tagbar'
Bundle 'SuperTab'
Bundle 'nerdtree'
Bundle 'fugitive.vim'
Bundle 'jade.vim'
Bundle 'jshint.vim'
Bundle 'powerline'
Bundle 'lunaru/vim-less'

" vim-snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
" Bundle "honza/vim-snippets"
" Bundle "garbas/vim-snipmate"
" Bundle "https://github.com/msanders/snipmate.vim"

" CoffeeScript support.
Bundle 'vim-coffee-script'

" Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/vimproc'

" Autocomplete
Bundle 'https://github.com/Valloric/YouCompleteMe'
Bundle 'https://github.com/marijnh/tern_for_vim.git'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


" Code nippets
Bundle 'UltiSnips'


" Open tagbar on the left.
let g:tagbar_left = 1
" Tell Vim where to find the tags file (in the cwd and recursively).
set tags=tags,./tags

source ${HOME}/.vim/coffeelint.vim
source ${HOME}/.vim/modules/stripws.vim
source ${HOME}/.vim/modules/clevertab.vim
source ${HOME}/.vim/modules/coffeetags.vim

au BufNewFile,BufRead *.jsm set filetype=javascript
au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead Cakefile set filetype=coffee
au BufRead,BufNewFile Vagrantfile set filetype=Vagrantfile
au BufRead,BufNewFile *.haml set filetype=haml
au BufRead,BufNewFile *.jade set filetype=jade
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.conf set filetype=upstart

" Syntastic config
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

" Remove trailing WS for JS files.
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre Cakefile :%s/\s\+$//e


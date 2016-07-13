set nocompatible
set wildignore=*/node_modules/*
set hidden
filetype plugin on
set foldmethod=syntax
set foldlevel=2

" ######################################################################
"  INSERTION
" ######################################################################
" tab
set expandtab      
set shiftwidth=2
set tabstop=2
set smartindent
" backspace
set backspace=indent,eol,start

" ######################################################################
"  APPEARANCE
" ######################################################################
syntax on
colorscheme molokai
set t_Co=256
set hlsearch
set relativenumber
set number
set cursorline
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline
" colorscheme overrides
hi CursorLineNr                  ctermbg=none  cterm=none
hi CursorLine                    ctermbg=237   cterm=none
hi Visual                        ctermbg=124   cterm=none
hi Normal           ctermfg=253  ctermbg=none

" ######################################################################
"  KEYMAPS
" ######################################################################
" Window movement
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" buffers
nmap <Tab> :b#<CR>

" ######################################################################
"  PLUGINS
" ######################################################################
" Vundle init
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
map ,b :CtrlPBuffer<CR>

Plugin 'elzr/vim-json'

Plugin 'rking/ag.vim'

Plugin 'scrooloose/nerdtree'
map ,p :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

Plugin 'valloric/youcompleteme'
set completeopt-=preview

Plugin 'vim-airline/vim-airline'
set laststatus=2

Plugin 'airblade/vim-gitgutter'

Plugin 'xolox/vim-misc'

Plugin 'xolox/vim-notes'
map <C-n> :Note <C-R>=expand('%:p')<CR><CR>

Plugin 'pangloss/vim-javascript'

" Vundle end
call vundle#end()
filetype plugin indent on

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'elmcast/elm-vim'
Plugin 'wincent/terminus'


call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=light
colorscheme solarized

set linebreak	
set showbreak=+++	
set textwidth=100	
set showmatch	
set visualbell	
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set expandtab	
set shiftwidth=2	
set smartindent	
set smarttab	
set softtabstop=4	

set ruler	
 
set undolevels=1000	
set backspace=indent,eol,start	
set directory=$HOME/.vim-swapfiles//
set number

"Nerdtree
map <A-1> :NERDTreeToggle<CR>

"Clear search
nnoremap <esc> :noh<return><esc>

"bottom line theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'

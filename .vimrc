set nocompatible              " be iMproved, required
   
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"alternatively,pass a path where Vundle should install initialize
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.

"Better file browser
Bundle 'scrooloose/nerdtree'
"code commenetr
Bundle 'srcooloose/nerdcommenter'
"Class/module browser
Bundle 'majustsushi/tagbar'

" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Bundle 'python.vim'
Bundle 'pythonhelper'

"scripts not on Github
Plugin 'git://git.wincent.com/command-t.git'

"git repos on your local machine (i.e when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
Bundle 'The-NERD-tree'

filetype plugin indent on     " required

"Some fundamental setting
"Set the number
set nu
"Be smart when using tabs
set smarttab
"tabs and apaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"always show status bar
set ls=2

"incremental search
set incsearch

"highlighted search results
set hlsearch

"syntax highlight on
syntax on

"Set the NERDTree
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
"Give a short key to NERD Tree
map lt :NERDTreeToggle

"Set the pydiction auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"default g:pydiction_menu_height == 15
"let g:pydiction_menu__height =20

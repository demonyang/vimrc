set nocompatible              " be iMproved, required

filetype off                  " required
"Set the number
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"alternatively,pass a path where Vundle should install initialize
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
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
"scripts not on Github
Plugin 'git://git.wincent.com/command-t.git'
"git repos on your local machine (i.e when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
Bundle 'The-NERD-tree'

"Set the NERDTree
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
"Give a short key to NERD Tree
map lt :NERDTreeToggle

filetype plugin indent on     " required

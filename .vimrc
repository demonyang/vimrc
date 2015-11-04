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
" scripts on GitHub repos
Plugin 'fatih/vim-go'
"Bundle 'Shougo/neocomplete.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'

"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'supertab'
Plugin 'hexHighlight.vim'

"scripts not on Github
"Plugin 'git://git.wincent.com/command-t.git'

"git repos on your local machine (i.e when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
Bundle 'The-NERD-tree'

filetype on
filetype plugin indent on     " required

let mapleader = "]"
""Some fundamental setting
""Set the number
""right
nnoremap <leader>lw <C-W>l
""left
nnoremap <leader>hw <C-W>h
""down
nnoremap <leader>jw <C-W>j
""up
nnoremap <leader>kw <C-W>k

set nu
""Be smart when using tabs
set smarttab
""tabs and apaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

""always show status bar
set laststatus=2
" 高亮显示当前行/列
set cursorline
set cursorcolumn
""incremental search
"set incsearch
set ignorecase

""highlighted search results
set hlsearch

""syntax highlight on
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" set c/c++ autoindent
set cindent
"set nocompatible
"set backspace=indent,eol,start

""Set the NERDTree
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
""Give a short key to NERD Tree
nnoremap <leader>t :NERDTreeToggle<CR>
""autocmd vimenter * NERDTree


"""""""""""""""""""""""""""""""""""""""
"           ycm settings
"""""""""""""""""""""""""""""""""""""""
" 开启 YCM 基于标签引擎  
let g:ycm_collect_identifiers_from_tags_files=1 
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0 
""在注释中也可以补全  
let g:ycm_complete_in_comments=1 
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax =1
""输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=2
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
let g:ycm_use_ultisnips_completer=0
"在接受补全后不分裂出一个窗口显示接受的项  
set completeopt-=preview 
"在字符串输入中也能补全
let g:ycm_complete_in_strings=1
"black list
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \ 'go' : 1,
      \ 'golang' : 1,
      \}
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 

""The settings og vim's colorscheme
colorscheme molokai
set t_Co=256

set backspace=indent,eol,start
""shortcut of Tagbar
nnoremap <leader>p :TagbarToggle<CR>

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=marker
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
nnoremap <leader>zd zf%

""Set golang's highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"set no fmt
let g:go_fmt_autosave = 0

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
autocmd BufReadPost *.go,*.py,*.cc,*.h,*.c if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd! BufWritePost .vimrc source %

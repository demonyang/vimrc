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
Bundle 'Lokaltog/vim-powerline'
Bundle 'Yggdroot/indentLine'
Bundle 'derekwyatt/vim-fswitch'

Bundle 'mileszs/ack.vim'
Bundle 'dyng/ctrlsf.vim'

Bundle 'fholgado/minibufexpl.vim'
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
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\ 10
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
"let g:Powerline_symbols='fancy'
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
set cscopequickfix=s-,c-,d-,i-,t-,e-  
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

" Vim
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
"close indetLine
"let g:indentLine_enabled = 0


"使用ctrlsf.vim插件在工程内全局查找光标所在关键字，
"设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

""""""""""""""""""""""""""""""""""""""
"       Setting the NERDTree
"""""""""""""""""""""""""""""""""""""
let NERDTreeMinimalUI=1
let NERDChristmasTree=1
""Give a short key to NERD Tree
nnoremap <leader>t :NERDTreeToggle<CR>
let NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.o$']


"""""""""""""""""""""""""""""""""""""""
"           YCM SETTINGS
"""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_global_ycm_extra_conf = '~/.vim/data/ycm/.ycm_extra_conf.py'
"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0 
" 开启 YCM 基于标签引擎  
let g:ycm_collect_identifiers_from_tags_files=1 
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0 
""在注释中也可以补全  
let g:ycm_complete_in_comments=1 
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax =1
""输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1
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
      \}
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> 

"""""""""""""""""""""""""""""""""""""""
"  Settings of vim's colorscheme
"""""""""""""""""""""""""""""""""""""""
colorscheme molokai
set t_Co=256

set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""
"  Settings of tagbar
"""""""""""""""""""""""""""""""""""""""
"shortcut of Tagbar
nnoremap <leader>p :TagbarToggle<CR>
"let tagbar left
let g:tagbar_left = 1

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=marker
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
nnoremap <leader>zd zf%

"""""""""""""""""""""""""""""""""""""""
"  Settings of GoLang
"""""""""""""""""""""""""""""""""""""""
"Set golang's highlight
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

"< F6> build and run sample C++ program 
map <F6> :call CompileRunGpp()<CR>  
func! CompileRunGpp()  
exec "w"  
exec "!g++  % -o %<"  
exec "! ./%<"  
endfunc  
"<F8> C,C++的调试
map <F7> :call Rungdb()<CR>
func! Rungdb()
exec "w"
exec "!g++ % -g -o %<"
exec "!gdb ./%<"
endfunc

let g:miniBufExplorerAutoStart = 0 


"""""""""""""""""""""""""""""""""""""""
"  Settings of vim-fswitch
"""""""""""""""""""""""""""""""""""""""
" switch .cc/.cpp with .h
nmap <silent><Leader>sw :FSSplitLeft<cr>
let b:fswitchdst = 'c,cc,cpp'
let b:fswitchdst = 'h'

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
autocmd BufReadPost *.go,*.py,*.cc,*.h,*.c if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd! BufWritePost .vimrc source %

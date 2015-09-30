set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"****************重要说明 Start ********************"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" vim-scripts repos  https://github.com/vim-scripts/taglist.vim
" Bundle 'taglist.vim'
" vimscripts的repo使用下面的格式，直接是插件名称
" Bundle 'SuperTab'
"****************重要说明 End ********************"


" 插件安装
" Syntax ---语法检测
" need Vim version 7.175 or later
Bundle 'scrooloose/Syntastic'
    let g:syntastic_check_on_open = 1
    let g:syntastic_error_symbol = '✗'
    let g:synastic_warning_symbol = '⚠'
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_loc_list_height = 5
    let g:syntastic_enable_highlighting = 0
    " 多语言语法检查
    let g:syntastic_javascript_checkers = ['jsl', 'jshint']
    let g:syntastic_html_checkers=['tidy', 'jshint']
    let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" 代码自动补全
Bundle 'Valloric/YouCompleteMe'
    "youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<C-n>']
    "let g:ycm_key_list_select_completion = ['<Down>']
    let g:ycm_key_list_previous_completion=['<C-p>']
    "let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
    let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
    let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
    let g:ycm_seed_identifiers_with_syntax = 1 "语言关键字补全
    
Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
   let g:Powerline_symbols = 'fancy'
   "vim有一个状态栏 加上powline则有两个状态栏
   set laststatus=2
   set guifont=PowerlineSymbols\ for\ Powerline
   set nocompatible
   set t_Co=256

filetype plugin indent on     " required!

" /** vundle命令 **/

" Brief help

" :BundleList - list configured bundles

" :BundleInstall(!) - install(update) bundles

" :BundleSearch(!) foo - search(or refresh cache first) for foo

" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles

"

" see :h vundle for more details or wiki for FAQ

" NOTE: comments after Bundle command are not allowed..

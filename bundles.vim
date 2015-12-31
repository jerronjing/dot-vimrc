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
    let mapleader = ','
    "按,jd 会跳转到定义
    nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

Bundle 'taglist.vim'
  let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
  let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
  let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
     "使用帮助
     " <CR>          跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
     " o             在一个新打开的窗口中显示光标下tag
     " <Space>       显示光标下tag的原型定义
     " u             更新taglist窗口中的tag
     " s             更改排序方式，在按名字排序和按出现顺序排序间切换
     " x             taglist窗口放大和缩小，方便查看较长的tag
     " +             打开一个折叠，同zo
     " -             将tag折叠起来，同zc
     " *             打开所有的折叠，同zR
     " =             将所有tag折叠起来，同zM
     " [[            跳到前一个文件
     " ]]            跳到后一个文件
     " q             关闭taglist窗口
     " <F1>          显示帮助
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
   "vim有一个状态栏 加上powline则有两个状态栏
   ":PowerlineClearCache
   let g:Powerline_symbols = 'fancy'
   set laststatus=2
   set nocompatible

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

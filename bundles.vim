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

Bundle 'taglist.vim'
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'

"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2


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

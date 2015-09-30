source ~/.vim/bundles.vim

syntax on  "语法高亮

"设置每行的最大字符数，超过的话，将换行
set textwidth=80
" Linebreak on 500 characters
set lbr
set tw=500

set ai    "Auto indent
set si    "Smart indent
set wrap  "Wrap lines

"设置标签的切换 shift+j或者k
noremap <S-k> :tabnext<CR>
noremap <S-j> :tabpre<CR>

"切换paste与nopaste模式
set pastetoggle=<F11>
noremap <F5> :NERDTreeToggle<CR>

"Smart way to move between windows 分屏窗口移动
"则可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set encoding=utf-8

set number "需要显示行号则设置该项

"设置状态栏的显示信息
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容 
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"尽管如此，我们可以看到在默认情况下状态栏还是会显示旧的状态栏，这是因为Vim默认根本就不显示状态栏，
"而仅仅显示命令缓冲区的一些信息。为了告诉Vim你真的需要一个状态栏，可以将下面的语句加入到vimrc中，
"这个命令将保证状态栏显示在编辑器窗口的倒数第二行。
":set laststatus=0这个命令可以随时隐藏状态栏
set laststatus=2

"代码补全 
"Vim是内建代码补全功能的，在不需要通过任何设置的情况下就能使用。在您编辑代码的时候，键入
"ctrl+x, ctrl+o, ctrl+n, ctrl+p 等快捷键，就会弹出智能提示的菜单。
set completeopt=preview,menu

"共享剪贴板  
set clipboard+=unnamed

"打开状态栏标尺
set ruler 

"突出显示当前行
set cursorline              

" 自动缩进
set autoindent
set cindent
set smartindent          "智能对齐


"set whichwrap+=h,l      "使用h,l移动可以跨行
"set mps+=<:>            "让<>可以使用%跳转`

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

" 历史记录数
set history=1000

" 高亮显示匹配的括号
set showmatch

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限

"搜索忽略大小写
set ignorecase

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on



"" ---------------------------------------------------------
" 当新建php文件时候自动添加php头
"" -----------------------------------------------------------
autocmd BufNewFile *.php exec ":call PhpComment()"
" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost vimrc source ~/.vimrc 
autocmd! bufwritepost bundles.vim source ~/.vim/bundles.vim 

" 自动加入注释头
" 再次加载vimrc时，vim发现函数XXX已经定义了，所以给出提示。要避免这个提示，你在定义XXX函数时需要使用：
" function! XXX
func! PhpComment()
    call setline(1,"<?php")
	call append(line("."), "/**")
    call append(line(".")+1, " * Description ")
    call append(line(".")+2, " * @package    package")
    call append(line(".")+3, " * @copyright  copyright(2015) all rights reserved ")
    call append(line(".")+4, " * @author     <jerronjing@sohu.com>")
    call append(line(".")+5, " * @since      date " . strftime("%Y-%m-%d %H:%M:%S"))
    call append(line(".")+6, " */")
endfunc

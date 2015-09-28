source ~/.vim/bundles.vim

syntax on  "语法高亮

"设置标签的切换 shift+j或者k
noremap <S-k> :tabnext<CR>
noremap <S-j> :tabpre<CR>

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

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4
"用空格代替制表符, To insert space characters whenever the tab key is pressed
set expandtab

" 历史记录数
set history=1000

" 高亮显示匹配的括号
set showmatch

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限

"搜索忽略大小写
set ignorecase


"" ---------------------------------------------------------
" 当新建php文件时候自动添加php头
"" -----------------------------------------------------------
autocmd BufNewFile *.php exec ":call PhpComment()"

" 自动加入注释头
func PhpComment()
    call setline(1,"<?php")
	call append(line("."), "/**")
    call append(line(".")+1, " * Description ")
    call append(line(".")+2, " * @package    package")
    call append(line(".")+3, " * @copyright  copyright(2015) all rights reserved ")
    call append(line(".")+4, " * @author     <jerronjing@sohu.com>")
    call append(line(".")+5, " * @since      date " . strftime("%Y-%m-%d %H:%M:%S"))
    call append(line(".")+6, " */")
endfunc

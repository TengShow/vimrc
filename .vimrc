""""""""""""""""""""""""""
" autoindent,backup,fold,color
""""""""""""""""""""""""""
set autoindent "继承前一行的缩进方式，特别适用于多行注释
set shiftwidth=4 "设置自动缩进长度为4格
set tabstop=4 "设置Tab长度为4格
set smarttab
set expandtab
set nobackup
colorscheme desert "设置配色方案
set ruler      "打开状态栏标尺
set laststatus=2 "总是显示状态行
syntax on "语法高亮
set showmatch "显示括号匹配
set matchtime=1 "括号匹配显示时间为1(单位是十分之一秒)
set spell "拼写检查
setlocal spelllang=en_us
""""""""""""""""""""""""""""""
" File Encode
""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=gb2313,ucs-bom,utf-8,chinese
set fileencoding=utf-8 "设置文件编码
set termencoding=utf-8 "设置终端编码
set number
set wildmenu "按TAB键时命令行自动补齐
set cindent "按C语言格式缩进 c/c++自动缩进
set autoindent "参考上一行的缩进方式进行自动缩进
filetype indent on  "根据文件类型进行缩进
set hlsearch "开启搜索结果的高亮显示
"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc



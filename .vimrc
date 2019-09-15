""""""""""""""""""""""""""
" autoindent,backup,fold,color
""""""""""""""""""""""""""
set autoindent "继承前一行的缩进方式，特别适用于多行注释
set shiftwidth=4 "设置自动缩进长度为4格
set tabstop=4 "设置Tab长度为4格
set smarttab
set expandtab
set nobackup
colorscheme molokai "设置配色方案
"git clone git@github.com:tomasr/molokai.git
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


 """"""""""""""""""""""""""" Begin Vundle """"""""""""""""""""""""""""""
 "  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible               "去除VIM一致性，必须"
filetype off                   "必须"

"设置包括vundle和初始化相关的运行时路径"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
""启用vundle管理插件，必须"
Plugin 'VundleVim/Vundle.vim'

"在此增加其他插件，安装的插件需要放在vundle#begin和vundle#end之间"
""安装github上的插件格式为 Plugin '用户名/插件仓库名'"



call vundle#end()              
filetype plugin indent on      "加载vim自带和插件相应的语法和文件类型相关脚本，必须"


 """"""""""""""""""""""""""END Vundle """"""""""""""""""""""""""""""""""



""""""""""""""""""""""""" Begin  VimPlug""""""""""""""""""""""""""""""""""

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""

 "Specify a directory for plugins
 " - For Neovim: ~/.local/share/nvim/plugged
 " - Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.vim/plugged')

 " Make sure you use single quotes

 " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

 " Any valid git URL is allowed
 " Plug 'https://github.com/junegunn/vim-github-dashboard.git'

 " Multiple Plug commands can be written in a single line using | separators
 "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

 " On-demand loading
 "Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 "Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

 " Using a non-master branch
 "Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

 " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
 "Plug 'fatih/vim-go', { 'tag': '*' }

 " Plugin options
 "Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

 " Plugin outside ~/.vim/plugged with post-update hook
 "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

 " Unmanaged plugin (manually installed and updated)
 "Plug '~/my-prototype-plugin'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " Initialize plugin system
 call plug#end()

 """"""""""""""""""""""""""END VimPlug""""""""""""""""""""""""""""""""""

 
 
 """""""""""""""""""""""""""""" Begin Pathogen """"""""""""""""""""""""
 execute pathogen#infect()
 syntax on
 filetype plugin indent on




 """"""""""""""""""""""""""END Pathogen """""""""""""""""""""""""""""""""

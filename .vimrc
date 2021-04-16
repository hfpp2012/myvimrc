set nocompatible

set number

" default updatetime 4000ms is not good for async update
set updatetime=300

" By default timeoutlen is 1000 ms
set timeoutlen=500

" set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=6                   " minimum lines to keep above and below cursor

" 减少刷新和重画
set lz

let html_no_rendering=1

" Open new split windows to the right/bottom
" set splitright splitbelow
set splitright

set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

set autoindent
set smartindent

" set gcr=n:blinkon0

let mapleader = ','

" 文字过长时断行显示
set wrap

" 设置折叠方法
set fdm=manual

" 进入命令编辑模式时按tab弹出菜单
set wildmenu
set wildmode=list:longest,full

" 修复backspace键的作用
inoremap <BS> <Left><Del>
set whichwrap+=[

" 设置一行最多80个字符
" set textwidth=80

" 自动重新读入
set autoread

" 备份和缓存
set nobackup
set noswapfile
set nowritebackup

" 高亮搜索
set hlsearch
set incsearch

" no bell
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set mouse=a

set hidden

" 启动的时候不显示那个援助索马里儿童的提示
" set shortmess=atI

" 搜索时忽略大小写
set ignorecase
set smartcase

" 设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 设置标题
set title
set titlestring=%-25.55F\ %a%r%m titlelen=70"

" Copy paste between vim and everything else
" set clipboard=unnamedplus

" 高亮当前行
set cursorline

" 修改 vmirc 后自动生效
autocmd! bufwritepost .vimrc source ~/.vimrc

" 去掉工具栏
set go-=T

" 回到上次编辑的地方
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

call plug#begin('~/.vim/plugged')

  if filereadable(expand("~/myvimrc/bundle.vim"))
    source ~/myvimrc/bundle.vim
  endif

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

if filereadable(expand("~/myvimrc/settings.vim"))
  source ~/myvimrc/settings.vim
endif

if filereadable(expand("~/myvimrc/which-key.vim"))
  source ~/myvimrc/which-key.vim
endif

" colorscheme
if has("gui_running")
  set linespace=2
  set guioptions=
else
  set nocursorline
  set t_Co=256
endif

set termguicolors
set background=dark
set guifont=Monaco\ Nerd\ Font\ Mono:h13
" colorscheme monokai
colorscheme molokai

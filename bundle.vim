Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key'

Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx', 'typescript'],
  \ 'do': 'make install'
\}
" Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
" %
Plug 'andymass/vim-matchup'
Plug 'tomtom/tcomment_vim'
Plug 'Yggdroot/indentLine'
Plug 'mg979/vim-visual-multi'
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'brooth/far.vim'
" Plug 'machakann/vim-highlightedyank'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" buffer
Plug 'jlanzarotta/bufexplorer'
Plug 'mg979/vim-xtabline'

Plug 'voldikss/vim-floaterm'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

Plug 'dhruvasagar/vim-open-url'

" colorschema
Plug 'flazz/vim-colorschemes'
Plug 'crusoexia/vim-monokai'
Plug 'liuchengxu/space-vim-dark'
Plug 'morhetz/gruvbox'
Plug 'AlessandroYorba/Sierra'
Plug 'joshdick/onedark.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" language
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'

Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'honza/vim-snippets'

Plug 'liuchengxu/vista.vim'

Plug 'ap/vim-css-color'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'sheerun/vim-polyglot'

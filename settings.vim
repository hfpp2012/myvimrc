let g:ascii = [
\ '                                                 #####   #####',
\ '  ####      #    #    #  ######  #    #     #   #     # #     #',
\ ' #    #     #    #    #      #   #    #     #   #     # #     #',
\ ' #    #     #    #    #     #    ######     #    ######  ######',
\ ' #  # #     #    #    #    #     #    #     #         #       #',
\ ' #   #      #    #    #   #      #    #     #   #     # #     #',
\ '  ### #     #     ####   ######  #    #     #    #####   #####',
\]

" ---------------------------------------------
" plugins
" ---------------------------------------------
"
" NerdTree
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeWinSize=33
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
autocmd VimEnter * wincmd l
autocmd BufNew   * wincmd l

" airline
set laststatus=2
set noshowmode
let g:airline_theme="molokai"


" jsdoc
let g:jsdoc_enable_es6 = 1
let g:jsdoc_param_description_separator = "-"

" indentLine
let g:indentLine_enabled = 0

" Buffer explorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1

"
" vim-xtabline
"
let g:xtabline_settings = get(g:, 'xtabline_settings', {})
let g:xtabline_settings.map_prefix = '<leader>x'
let g:xtabline_settings.tabline_modes = ['buffers', 'tabs']
autocmd vimenter * XTabTheme slate
autocmd bufenter * XTabTheme slate
let g:xtabline_settings.buffers_paths = 0
let g:xtabline_settings.current_tab_paths = 0
let g:xtabline_settings.other_tabs_paths = 0

" vim-devicons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0

" glyph-palette
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"
" startify
"
let g:startify_custom_header = g:ascii + startify#fortune#boxed()

let g:startify_files_number = 15
let g:startify_lists = [
\ { 'type': 'files',     'header': ['   Files']                        },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
\ ]

let g:startify_bookmarks = [
\ { 's': '~/myvimrc/settings.vim' },
\ { 'b': '~/myvimrc/bundle.vim' },
\ { 'v': '~/.vimrc' },
\ { 'z': '~/.zshrc' },
\ ]

let g:startify_enable_special = 0

let g:startify_custom_footer =
\ ['', "   求知久久", '']

" easymotion
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"
" ---------------------------------------------
" key binding
" ---------------------------------------------
"
"
" vim-xtabline
map <leader>xq :XTabCloseBuffer<cr>
map <leader>xl :XTabListBuffers<cr>

" fzf
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
command! -bang -nargs=? -complete=dir Buffers
    \ call fzf#vim#buffers(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
map <leader>b :Buffers<CR>
map <C-p> :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>p :BLines<CR>

" startify
map <leader>o :Startify<cr>

" NerdTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>

" easymotion
map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Buffer explorer
nmap <leader>n :BufExplorer<CR>

" easy_align
vnoremap <silent> <Enter> :EasyAlign<cr>

" jsdoc
nmap <silent> <C-g> :call jsdoc#insert()<cr>

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

vmap <C-c> "+y
map <C-a> ggVG
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <C-q> :q<cr>
map <leader>q :q<cr>

noremap <C-t> :tabnew split<CR>

map <leader>w :w<CR>
cmap w!! w !sudo tee >/dev/null %
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk

nnoremap <leader>v *<C-O>
nmap <silent> ,/ :let @/ = ""<CR>

map <leader>u :source $MYVIMRC<cr>

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
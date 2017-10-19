"编辑器基本功能设置
"去除和vi的兼容性
"避免出现不必要的问题
set nocompatible
filetype on
set number
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cursorline
set hlsearch
set ignorecase
set wildmenu
set backspace=indent,eol,start
set nobackup
set clipboard=unnamed
set noswapfile
set showcmd
set foldmethod=indent
set foldlevelstart=99
set mouse=a
set encoding=utf-8

"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"插件列表
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
"Plugin 'mattn/emmet-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
"Plugin 'othree/csscomplete.vim'
"Plugin 'pangloss/vim-javascript'
Plugin 'chemzqm/vim-jsx-improve'
" Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'DoxygenToolkit.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'hushicai/tagbar-javascript.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'elzr/vim-json'
"Plugin 'axiaoxin/vim-json-line-format'
Plugin 'mhinz/vim-signify'
Plugin 'elentok/plaintasks.vim'
Plugin 'sjl/vitality.vim'
"Plugin 'bling/vim-bufferline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/calendar.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'qpkorr/vim-bufkill'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ryanoasis/vim-devicons'

""""""colorscheme"""""""
"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'dracula/vim'

call vundle#end()

filetype plugin indent on
autocmd BufRead,BufNewFile *.handlebars,*.hbs,*.mustache set ft=html syntax=handlebars
autocmd BufRead,BufNewFile *.vue,*.ftl set ft=html syntax=html
autocmd BufRead,BufNewFile *.less.module set ft=less syntax=less
autocmd BufRead,BufNewFile *.ts,*.tsx set ft=typescript
autocmd BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-

"设置leader
let mapleader=","

"切到行首行尾
nmap <Leader>b 0
nmap <Leader>e $

"保存
nmap <Leader>w :w<CR>
"关闭并不保存
nmap <Leader>qq :q!<CR>
"目录和工作区切换
nnoremap <Leader>nw <C-w><C-w>
"保存并退出
nmap <Leader>wq :wq<CR>

"vim内置切换窗体
nnoremap <C-j> <C-w><C-j>  "切换到下边的窗体
nnoremap <C-k> <C-w><C-k>  "切换到上边的窗体
nnoremap <C-h> <C-w><C-h>  "切换到左边的窗体
nnoremap <C-l> <C-w><C-l>  "切换到右边的窗体

"""""""分屏相关操作""""""""""
"关闭当前分屏
nnoremap <Leader>cw <C-w>c

" nnoremap <Leader>l  <C-w><C-l>
" nnoremap <Leader>k  <C-w><C-k>
" nnoremap <Leader>h  <C-w><C-h>
" nnoremap <Leader>k  <C-w><C-k>
nnoremap <Leader>wl <C-w>L
nnoremap <Leader>wh <C-w>H
nnoremap <Leader>wj <C-w>J
nnoremap <Leader>wk <C-w>K

"调整宽度
nnoremap <Leader>w> 10<C-w>>
nnoremap <Leader>w< 10<C-w><
"调整高度
nnoremap <Leader>w+ 10<C-w>+
nnoremap <Leader>w- 10<C-w>-

"tab标签切换
nnoremap tn <Esc>:tabn<CR>
nnoremap tp <Esc>:tabp<CR>
nnoremap tc <Esc>:tabc<CR>

"buffer切换
nnoremap bn <Esc>:BF<CR>
nnoremap bp <Esc>:BB<CR>
nnoremap bc <Esc>:BD<CR>

"退回命令行模式快捷键
inoremap jk <esc>
vnoremap jk <esc>

"取消高亮
nnoremap <Leader>nl :nohl<CR>

"选中全部
map <Leader>sa ggVG

"NERDTree配置
map <Leader>nn :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree
let NERDTreeWinPos = 0
let NERDTreeWinSize = 36
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '\~$'] "不展示相应文件
let NERDTreeMinimalUI = 1 "不展示额外信息
let NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeQuitOnOpen = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"nertdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ "Unknown"   : "?"
			\}

"ctrlp
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|android\|ios\|dist\'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:30'
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store

"ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_multi_buffers = 1
let g:ctrlp_funky_matchtype = 'path'

"airline配置
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kalisi'
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let airline#extensions#syntastic#error_symbol = 'E:'
let airline#extensions#syntastic#warning_symbol = 'W:'

"bufferline
let g:bufferline_rotate = 1
let g:bufferline_show_bufnr = 0

"colorscheme
syntax enable
syntax on
set background=light
colorscheme Solarized
" set background=dark
" colorscheme dracula
let g:solarized_termcolors=256

highlight CursorLine guibg=lightblue ctermbg=lightgray
highlight CursorColumn guibg=lightblue ctermbg=lightgray

"vim-indent-guide
let g:indentLine_faster = 1
let g:indentLine_enabled = 1


"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = {'javascript':{'left': '//','right': ''}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"doxygentoolkit
let g:DoxygenToolkit_compactDoc = 'yes'
let g:DoxygenToolkit_fileTag = '@FileName '
let g:DoxygenToolkit_versionTag = '@Version '
let g:DoxygenToolkit_briefTag_pre = '@Synopsis '
let g:DoxygenToolkit_paramTag_pre = '@Param '
let g:DoxygenToolkit_returnTag = '@Return '
let g:DoxygenToolkit_blockHeader = ''
let g:DoxygenToolkit_blockFooter = ''
let g:DoxygenToolkit_authorName = 'ployer900, <yuhongliang900@163.com>'
let g:DoxygenToolkit_licenseTag = 'MIT LICENSE'

"emmet
let g:user_emmet_mode = 'a'
let g:user_emmet_install_global = 0
" let g:user_emmet_leader_key = '<C-y>'
autocmd FileType html,css,EmmetInstall

"javascript
let javascript_enable_domhtmlcss = 1

"javascript syntastic check
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": [],
        \ "passive_filetypes": [] 
		\}
nnoremap lc <Esc>:lclose<CR>

"tagbar
let g:tagbar_iconchars = ['+', '-'] 
let g:tagbar_width = 31
let g:tagbar_left = 0
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nnoremap tag :TagbarToggle<CR>

"json
let g:vim_json_syntax_conceal = 0

"autoformat
let g:autoformat_verbosemode = 0
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"ycm
set completeopt-=preview
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 0
let g:ycm_key_list_select_completion = ['<Tab>', '<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.'],
			\   'ocaml' : ['.', '#'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
			\   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!(?=[a-zA-Z]{3,4})'],
			\   'html': ['<', '"', '</', ' '],
			\   'vim' : ['re![_a-za-z]+[_\w]*\.'],
			\   'ruby' : ['.', '::'],
			\   'lua' : ['.', ':'],
			\   'erlang' : [':'],
			\   'haskell' : ['.', 're!.'],
			\   'scss,css': [ 're!^\s{2,4}', 're!:\s+' ],
			\ }

"tern_for_vim
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'no'
autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete

"vim-jsx
let g:jsx_ext_required = 0

"startify
let g:startify_custom_header = [
			\ '					+------------------------------------------------------------+				',
			\ '					| Feeling relax, cherishing time, hardworking and improving  |				',
			\ '					| life quality and style. At last, to do something that help |				',
			\ '					| anthor people and meaningful to society.					 |				',
			\ '					|															 |				',
			\ '					| GITHUB: https://github.com/ployer900						 |				',
			\ '					| EMAIL: yuhongliang900@163.com								 |				',
			\ '					+------------------------------------------------------------+'
			\]
let g:startify_custom_footer = [
			\ '					+-------------------------------------+'					,
			\ '					| X + Y = Z ........... X + Y = X * Y |'					,
			\ '					+-------------------------------------+'
			\]
let g:startify_skiplist = [
			\ '/Users/yuhongliang/.*rc$'
			\]
let g:startify_padding_left = 20
let g:startify_files_number = 8

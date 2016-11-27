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
set cursorline
set hlsearch
set ignorecase
set wildmenu
set backspace=indent,eol,start
set nobackup
set clipboard=unnamed
set noswapfile
set showcmd

"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"插件列表
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lepture/vim-css'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'othree/html5.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'DoxygenToolkit.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype indent on
filetype plugin on
filetype plugin indent on
syntax enable
syntax on
autocmd BufRead,BufNewFile *.handlebars,*.hbs,*.mustache set ft=html syntax=handlebars

"设置leader
let mapleader=","

"切到行首行尾
nmap lb 0
nmap le $

"保存
nmap <Leader>w :w<CR>
"关闭并不保存
nmap <Leader>qq :q!<CR>
"目录和工作区切换
nnoremap nw <C-w><C-w>
"保存并退出
nmap <Leader>wq :wq<CR>

"vim内置切换窗体
nnoremap <C-j> <C-w><C-j>  "切换到下边的窗体
nnoremap <C-k> <C-w><C-k>  "切换到上边的窗体
nnoremap <C-h> <C-w><C-h>  "切换到左边的窗体
nnoremap <C-l> <C-w><C-l>  "切换到右边的窗体
nnoremap <C-q> <C-w>c	   "关闭当前窗体

"关闭当前分屏
nnoremap <Leader>cw <C-w>c
nnoremap w> 10<C-w>>
nnoremap w< 10<C-w><

"退回命令行模式快捷键
inoremap jk <esc>
vnoremap jk <esc>

"取消高亮
nnoremap nl :nohl<CR>

"选中全部
map <Leader>sa ggVG

"NERDTree配置
map <Leader>nn :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\.pyc$', '\~$'] "不展示相应文件
let NERDTreeMinimalUI=1	"不展示额外信息
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
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
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|android\|ios'

"ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR> 
let g:ctrlp_funky_syntax_highlight = 1

"airline配置
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"javascript-libraries-syntax
"let g:used_javascript_libs = 'underscore,jquery,react,flux,requirejs,handlebars,vue,angularjs,angularuirouter,jasmine,chai,ramda,d3'

"colorscheme
syntax on
set background=light
"let g:solarized_termolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast='normal'
"let g:solarized_visibility='high'
colorscheme mango

"vim-indent-guide
let g:indentLine_color_term = 251
let g:indentLine_char = '┊'
let g:indentLine_enabled = 1
let g:indentLine_showFirstIndentLevel = 0

"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = {'javascript':{'left': '/**','right': '*/'}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"doxygentoolkit
let g:DoxygenToolkit_briefTag_pre = '@synopsis'
let g:DoxygenToolkit_paramTag_pre = '@param '
let g:DoxygenToolkit_returnTag = '@return'
let g:DoxygenToolkit_blockHeader = ''
let g:DoxygenToolkit_blockFooter = ''
let g:DoxygenToolkit_authorName = 'yuhongliang'
let g:DoxygenToolkit_licenseTag = '@copyright all reserved'

"airline 配置
"主题
let g:airline_theme = 'xtermlight'

"emmet
let g:user_emmet_mode = 'a'
let g:user_emmet_install_global = 0
autocmd FileType html,css, EmmetInstall
let g:user_emmet_leader_key='y'

"javascript
let javascript_enable_domhtmlcss = 1


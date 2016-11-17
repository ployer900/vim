"编辑器基本功能设置
"去除和vi的兼容性
"避免出现不必要的问题
set nocompatible
filetype on
set number
set tabstop=4
set shiftwidth=4
set cursorline
set hlsearch
set ignorecase
set wildmenu
set backspace=indent,eol,start

"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"插件列表
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Lokaltog/vim-powerline'
Plugin 'lepture/vim-css'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'othree/html5.vim'
Plugin 'othree/yajs.vim'
Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'croaky/vim-colors-github'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'daylerees/colour-schemes'
Plugin 'sickill/vim-monokai'
Plugin 'reedes/vim-colors-pencil'
Plugin 'Yggdroot/indentLine'
Plugin 'DoxygenToolkit.vim'
"Plugin 'ryanoasis/vim-devicons'


call vundle#end()
filetype plugin indent on
syntax on
syntax enable
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"set encoding=utf8

"设置leader
let mapleader=","

"切到行首行尾
nmap lb 0
nmap le $

"保存
nmap <Leader>w :w<CR>
"关闭当前分割窗口
nmap <Leader>q :q<CR>
"目录和工作区切换
nnoremap nw <C-w><C-w>
"保存并退出
nmap <Leader>wq :wq<CR>

"vim内置切换窗体，不是tmux中的
"panes间切换快捷键
":sp水平分割当前窗体
":vs垂直分割当前窗体
nnoremap <C-j> <C-w><C-j>  "切换到下边的窗体
nnoremap <C-k> <C-w><C-k>  "切换到上边的窗体
nnoremap <C-h> <C-w><C-h>  "切换到左边的窗体
nnoremap <C-l> <C-w><C-l>  "切换到右边的窗体
nnoremap <C-q> <C-w>c	   "关闭当前窗体

"normal模式下切换项目目录和工作区域

"括号自动匹配
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i

"NERDTree配置
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\.pyc$', '\~$'] "不展示相应文件
let NERDTreeMinimalUI=1	"不展示额外信息
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
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'cra'
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|android\|ios'

"powerline配置
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"javascript-libraries-syntax
let g:used_javascript_libs = 'underscore,jquery,react,flux,requirejs,handlebars,vue,angularjs,angularuirouter,jasmine,chai,ramda,d3'

"vim-colors-github
set background=light
colorscheme papercolor
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

"shortkey maps
"

"esc
inoremap jk <esc>
vnoremap jk <esc>



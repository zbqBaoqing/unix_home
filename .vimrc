let mapleader = ','

" Make command line two lines high"
set ch=2
set ts=4
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk,gb2312
set fileformats=unix
set scrolloff=3
set foldnestmax=2

set hlsearch incsearch
set ignorecase smartcase

set number
set autoindent
set showmatch
"设置光标高亮显示
set cursorline
set cursorcolumn
set ttyfast
set ruler

set autoread
set backspace=indent,eol,start


"自动换行
set wrap
"去除左右两边的滚动条
set go-=r
set go-=L

"打开高亮
syntax enable

"不要兼容vi
set nocompatible
"colorscheme desert
colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

set fdm=indent
"key maps
map <C-M> :tabnew<CR>
map <C-N> :tabnext<CR>
map <C-P> :tabpre<CR>

nnoremap <leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>, :tabnew <C-R>=expand('%:p:h') . '/'<CR>
inoremap jj <Esc>
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-H> :set hls<CR><C-L>

"tagbar
nmap <leader>t :TagbarToggle<CR>

"ctags
set tags=./.git/tags,./tags,~/.vim/tags;
set autochdir

"屏蔽掉讨厌的F1键
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"取消粘贴缩进
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-a> <home>
inoremap <c-e> <end>
"esc的映射
imap jj <esc>


nnoremap Y y$

"设置NERDTree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
map <C-C> :NERDTreeFind<CR>
map <C-X> :NERDTreeToggle<CR>

"powerline
set laststatus=2
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
let g:showmarks_enable = 0
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyz".
                        \ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_textlower = " "
let g:showmarks_textupper = " "
let g:showmarks_textother = " "
let g:showmarks_hlline_lower = 1
let g:showmarks_hlline_upper = 1
let g:showmarks_hlline_other = 1

"tab键显示待选项
set wildmenu

set t_Co=256
"使用color solarized
colorscheme solarized
let g:solarized_menu = 0
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

"将-连接符也设置为单词
set isk+=-

"自动载入配置文件不需要重启
autocmd! bufwritepost _vimrc source %

"行号自动跳转
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


"vim 插件管理 
"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
filetype off        " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"let Vundle manage Vundle
"required!
Bundle 'gmarik/vundle'
"vim-scripts repos
"Bundle 'vim-plugin-foo'
"Bundle 'vim-plugin-bar'
"Bundle 'ctrlp.vim'
"Bundle 'AutoClose'
Bundle 'ZenCoding.vim'
Bundle 'matchit.zip'
Bundle 'ShowTrailingWhitespace'
Bundle '_jsbeautify'
Bundle 'EasyMotion'
Bundle 'FencView.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'snipMate'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'OmniCppComplete'
Bundle 'https://github.com/Lokaltog/vim-powerline'
Bundle 'https://github.com/Shougo/neocomplcache.git'
Bundle 'https://github.com/majutsushi/tagbar.git'

"必须的设置：
filetype on
filetype plugin indent on


"不要兼容vi
set nocompatible

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
"set ignorecase smartcase

set number
set autoindent
set showmatch
set noshowmode
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

set fdm=manual
"key maps
"map <C-T> :tabnew<CR>
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
"set tags=./.git/tags;./tags;~/.vim/tags;
set tags=./ctags;~/.vim/ctags;
"set autochdir

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
map <C-C> :NERDTreeToggle<CR>

"设置taglist
let Tlist_Show_One_File=1 "只显示当前文件的tag
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口则退出vim
let Tlist_Use_Right_Window=1 "右侧现实taglist
let Tlist_GainFocus_On_ToggleOpen=1 "自动聚焦到taglist
map <C-X> :TlistToggle<CR>

"设置gocode
map <C-M> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

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

"go相关的配置
let g:fencview_autodetect=1
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:godef_split=3
au BufRead,BufNewFile *.go set filetype=go
au FileType go nmap <Leader>s <Plug>(go-implements)

"tab键显示待选项
set wildmenu


set t_Co=256
"设置光标高亮显示
set cursorline    "same as set cul
set cursorcolumn  "same as set cuc
hi CursorLine term=bold cterm=bold "guibg=0 ctermbg=235
hi CursorColumn term=bold cterm=bold "guibg=0 ctermbg=235
"toggle hi of cuc and cul
nnoremap H :set cursorline! cursorcolumn!<CR>

"""""""""""""""""""""""""""""""""""COLOR SCHEMA"""""""""""""""""""""""
"colorscheme pablo
"colorscheme desert
"colorscheme candy
"colorscheme vividchalk
"colorscheme perfectdark
"colorscheme Dracula

"""""""molokai相关设置
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
""""""""""""""""""""""

"""""""solarized相关设置
"colorscheme solarized
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"""""""""""""""""""""""


"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet(4)<cr>
function AddTitle()
    call append(0,"# -*-coding:utf-8 -*-")
    call append(1,'"""')
    call append(2,"   ********************************************************")
    call append(3,"   * Author: zhang baoqing                                *")
    call append(4,"   *                                                      *")
    call append(5,"   * Mail :  zhangbaoqing@xiaomi.com                      *")
    call append(6,"   *                                                      *")
    call append(7,"   * Create Time: ".strftime("%Y-%m-%d %H:%M")."                        *")
    call append(8,"   *                                                      *")
    call append(9,"   * Filename: ".expand("%:t"))
    call append(10,"  *                                                      *")
    call append(11,"  ********************************************************")
    call append(12,"")
    call append(13,"    功能说明:")
    call append(13,"        ")
    call append(15,'"""')
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet(num)
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    if a:num == 4
        call AddTitle()
    elseif a:num == 5
        call AddGoTitle()
    endif
endfunction
map <F5> :call TitleDet(5)<cr>
function AddGoTitle()
    call append(0,"/*")
    call append(1,"   ********************************************************")
    call append(2,"   * Author: zhang baoqing                                *")
    call append(3,"   *                                                      *")
    call append(4,"   * Mail :  zhangbaoqing@xiaomi.com                      *")
    call append(5,"   *                                                      *")
    call append(6,"   * Create Time: ".strftime("%Y-%m-%d %H:%M")."                        *")
    call append(7,"   *                                                      *")
    call append(8,"   * Filename: ".expand("%:t"))
    call append(9,"   *                                                      *")
    call append(10,"   ********************************************************")
    call append(11,'')
    call append(12,'    功能说明:')
    call append(13,'          ')
    call append(14,'*/')
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf



"禁止pyFlaks使用QuickFix，这样在按下<F7>时会调用flake8
let g:pyflakes_use_quickf=0

if has('gui_running')
     set background=dark
     set transparency=5
     "set lines=60
     "set columns=190
     set guifont=Monaco:h15
     set t_Co=256
else
     set background=dark
endif
"""""""""""""""""""""""""""""""""""COLOR SCHEMA"""""""""""""""""""""""

"将-连接符也设置为单词
set isk+=-

"自动载入配置文件不需要重启
"autocmd! bufwritepost _vimrc source %
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"行号自动跳转
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"自动格式化代码
autocmd BufWritePre *.go :Fmt

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
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'snipMate'
Bundle 'bufexplorer.zip'
Bundle 'OmniCppComplete'
Bundle 'https://github.com/yegappan/taglist'
Bundle 'https://github.com/Lokaltog/vim-powerline'
Bundle 'https://github.com/Shougo/neocomplcache.git'
Bundle 'https://github.com/majutsushi/tagbar.git'
Bundle 'https://github.com/fatih/vim-go'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'



"python plugin
Bundle 'https://github.com/nvie/vim-flake8'

"auto complete
let g:neocomplcache_enable_at_startup=1


 autocmd filetype crontab setlocal nobackup nowritebackup

"必须的设置：
filetype on
filetype plugin indent on
filetype plugin on

syntax on


set mouse=a
syntax on

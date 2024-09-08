syntax on
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set updatetime=300 " Default is 4000ms
set showmatch		" Show matching brackets.
set showcmd     " Display ketstokes in statusline
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hidden		    " Hide buffers when they are abandoned
set nonumber
set cursorline    " 当前行高亮显示
set hlsearch      " 搜索时高亮显示被找到的文本
" set shortmess-=S   
set shortmess+=atI " 禁止显示欢迎信息
set foldenable    " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0  " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
"set mouse=a		" Enable mouse usage (all modes)
"set autowrite		" Automatically save before commands like :next and :make
set wildmode=longest,list " vim :命令的补全在多个匹配项下列出所有，而不是自动选择第一个


" == Indent == 
set smartindent     " 开启新行时使用智能自动缩进
set cindent
set expandtab      " Use spaces instead of tabs
set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
set tabstop=2
set shiftwidth=2


" == StatusLine == 
set ruler         " 打开状态栏标尺
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cpoptions+=$  " Show a `$` at the end of the changed text
set laststatus=2  " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息


" == Color ==
" For wsl's OneHalfDark
hi Pmenu ctermfg=7 ctermbg=236
hi PmenuSel ctermfg=white ctermbg=32
hi CocFloating ctermfg=black ctermbg=240
"colorscheme darkblue


" == AutoCommand ==
autocmd Filetype sh setlocal shiftwidth=2 ts=2 softtabstop=2 expandtab
autocmd Filetype python setlocal shiftwidth=2 ts=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.h set ft=c

autocmd VimEnter * :set path=** " set path to current dir when entering vim

" Insert file-header for C/C++ file
" autocmd bufnewfile *.c so /home/soben/mytool/c_header
" autocmd bufnewfile *.c exe "1," . 10 . "g/file.*/s//file     " .expand("%")
" autocmd bufnewfile *.c exe "1," . 10 . "g/author.*/s//author   Wang Lu"
" autocmd bufnewfile *.c exe "1," . 10 . "g/date.*/s//date     " .strftime("%Y-%m-%d")
"autocmd Bufwritepre,filewritepre *.c execute "normal mlm"
"autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/lastmod.*/s/lastmod.*/lastmod  " .strftime("%Y-%m-%d %T")
"autocmd bufwritepost,filewritepost *.c execute "normal `lm"


" 搜索时显示count. 后面使用了vim-searchindex, 因为原生的经常显示[?/??]

" program used when running :grep
"set grepprg=ag\ --vimgrep
" ack --column work with grepformat can precisely locate col and row
set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m

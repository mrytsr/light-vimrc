"
"    .___________.   ____    ____     __     .___  ___. 
"    |           |   \   \  /   /    |  |    |   \/   | 
"    `---|  |----`    \   \/   /     |  |    |  \  /  | 
"        |  |          \      /      |  |    |  |\/|  | 
"        |  |           \    /       |  |    |  |  |  | 
"        |__|            \__/        |__|    |__|  |__| 
" 
" 
" Install
"
" cd ~ &&\
"     git clone http://git.oschina.net/mrytsr/tvim .vim &&\
"     git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&\
"     cd .vim && vim +BundleInstall +qa
"

let g:timeStampFormat = '170101'
let g:timeStampString = '%y%m%d'
let g:timeStampLeader = 'version'


autocmd BufNewFile *.lua 0r /tmp/lua.template
autocmd BufNewFile *.lua normal gnp
autocmd BufNewFile *.php 0r /tmp/php.template
autocmd BufNewFile *.php normal gnp
autocmd BufRead,BufNewFile *.conf setfiletype conf
autocmd BufRead *.php set includeexpr=substitute(v:fname,'\\\','/','g')
autocmd BufRead *.php set include=^#\s*use
autocmd BufRead *.php set suffixesadd+=.php
autocmd BufWinEnter *.mako set filetype=html
autocmd BufWinEnter *.sls set filetype=yaml
autocmd BufWinEnter *.tp set filetype=html
autocmd BufWinEnter *.volt set filetype=html
autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
call system('bash ~/.vim/lua.template > /tmp/lua.template')
call system('bash ~/.vim/php.template > /tmp/php.template')
call system('mkdir -p ~/.vimtmp/undodir ~/.vimtmp/backupdir ~/.vimtmp/directory')
colorscheme torte
filetype on
filetype plugin indent on
filetype plugin on
let g:is_bash=1
let &t_EI .= "\<Esc>[?2004l"
let &t_SI .= "\<Esc>[?2004h"
let $VIMFILES=$HOME.'/.vim'
let @w = 'x~n'
nmap <c-l> <esc>:noh<cr>
nmap <leader>3 :NERDTreeFind<cr>
nmap <leader>ta :set filetype=awk        <CR>
nmap <leader>tc :set filetype=css        <CR>
nmap <leader>td :set filetype=htmldjango <CR>
nmap <leader>te :set filetype=sed        <CR>
nmap <leader>th :set filetype=html       <CR>
nmap <leader>tj :set filetype=javascript <CR>
nmap <leader>tl :set filetype=lua        <CR>
nmap <leader>tm :set filetype=markdown   <CR>
nmap <leader>tp :set filetype=php        <CR>
nmap <leader>ts :set filetype=sh         <CR>
nmap <leader>tt :set filetype=txt        <CR>
nmap <leader>tv :set filetype=vim        <CR>
nmap <leader>ty :set filetype=python     <CR>
set ambiwidth=double
set autoindent    
set autoread                                " 设置当文件被改动时自动载入
set autowriteall
set backup
set backupdir=~/.vimtmp/backupdir
set bs+=start
set cindent       
set clipboard+=unnamed                      " 共享剪贴板
set complete-=i
set cursorline                              " 高亮显示当前行
set directory=~/.vimtmp/directory
set encoding=utf-8
set expandtab  
set fileencodings=ucs-bom,utf-8,cp936       
set fileencoding=utf-8
set foldmethod=manual
set helplang=cn                             " 中文帮助文档
set hidden     
set hlsearch
set ignorecase smartcase                    " 搜索时忽略大小写，除非在有一个或以上大写字母时
set laststatus=2                            " status_bar
set noautochdir
set nocompatible               
set noshowmatch
set nowrapscan
set number      
set pastetoggle=<F5>
set path+=./model/,./ctrl/,./lib/,*/templates/,*/static/,..,*/src/main/java/
set printoptions=formfeed:y,header:0,paper:A4,duplex:off,syntax:n
set scrolloff=1                             " 光标移动到buffer的顶部和底部时保持3行距离
set shell=/bin/bash
set shiftwidth=4
set showcmd                                 " 输入的命令显示出来，看的清楚些
set smartindent   
set smarttab     
set statusline+=%=%-14.(%l,%c%V%)\ %p%%
set statusline+=\ [%{&ff}:%{&fenc}:%Y]
set statusline+=\ %{getcwd()}
set statusline=T$\ %<%f
set statusline+=%w%h%m%r                 
set tabstop=4   
set t_Co=256                                " 兼容putty下的vim
set textwidth=0                             " 关闭自动换行
set undodir=$HOME/.vimtmp/undodir
set undofile 
set vb t_vb=                                " vim彻底关闭报错声
set viewdir=~/.vimtmp/view
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*.tgz,*.zip,*.url,*.pyc,*.class
syntax on

"
" Vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
Plugin 'vim-scripts/DrawIt'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'vim-syntastic/syntastic'
Plugin 'alvan/vim-php-manual'
Plugin 'plasticboy/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'airblade/vim-gitgutter'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-abolish'
Plugin 'mrytsr/utime.vim'
filetype plugin indent on
call vundle#end()
let g:vim_markdown_folding_disabled = 1
let g:gitgutter_max_signs=10000

"
" syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_quiet_messages = { "level": "warnings" }

"
" NERDTree
"
let g:NERDTreeDirArrowExpandable  = '@'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden            = 0
let g:NERDTreeBookmarksFile         = $HOME.'/.vimtmp/NerdBookmarks.txt'
let g:NERDTreeShowBookmarks         = 1
let g:NERDTreeShowFiles             = 1
let g:NERDTreeShowLineNumbers       = 0
let g:NERDTreeWinSize               = 29
let g:NERDTreeMinimalUI             = 1
let g:NERDTreeDirArrows             = 1
let g:NERDTreeIgnore                = [
            \ '.*\.class', 
            \ '.*\.pyc', 
            \ '.*\.chm', 
            \ '.*\.ttf',
            \ '.*\.lnk',
            \ '.*\.cproj',
            \ '.*\.exe',
            \ '.*\.dll',
            \ '.*\.out',
            \ '.*\.files',
            \ '.*\.zip',
            \ '.*\.rar',
            \ '.*\.gif'
            \ ]
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
            \ }

"
" ctrlp
"
" Making CtrlP.vim load 100x faster — A Tiny Piece of Vim — Medm 
" https://medium.com/a-tiny-piece-of-vim/making-ctrlp-vim-load-100x-faster-7a722fae7df6#.emcvo89nx
let g:ctrlp_user_command = [
            \ '.git/', 
            \ 'git --git-dir=%s/.git ls-files -oc --exclude-standard'
            \ ]
let g:ctrlp_match_window       = 'bottom,order:btt,min:5,max:5,results:10'
let g:ctrlp_cmd                = 'CtrlPMixed'
let g:ctrlp_mruf_default_order = 1

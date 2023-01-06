" ==================== Auto load for first time uses ====================
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:nvim_plugins_installation_completed=1


exec 'nohlsearch'
syntax on
let &t_ut=''
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let mapleader=" "
set wrap
set cursorline
set autochdir
set number
set norelativenumber
set hlsearch
set incsearch
set smartcase
set updatetime=100
set nocompatible
set mouse=a
set encoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed                    " 共享剪切板
set signcolumn=yes
map <C-a> <HOME>



filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


" 分屏设置
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>


" 修改分屏大小
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" 退出分屏操作
noremap <LEADER>q <C-w>j:q<CR>


" ==================== Tab management ====================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap ti :-tabnext<CR>
noremap tn :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>



" Ranger
let g:rnvimr_ex_enable = 1   

map ra :Ranger<CR>



" == fzf
let g:fzf_preview_window = 'right:40%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }
nnoremap <C-p> :Files<CR>
nnoremap <C-e> :Buffers<CR>

noremap J 5j
noremap K 5k


map S :w<CR>
map Q :q!<CR>
map X :x<CR>
map R :source $MYVIMRC<CR>
map vn :vsplit<CR>

"插入模式"
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1




" == 主题配置
colorscheme deus

" === NERDTree
map ff :NERDTreeToggle<CR>
"打开文件默认开启文件树
"autocmd VimEnter * NERDTree
let NERDTreeChDirMode=2                                         " 设置当前目录为nerdtree的起始目录
let NERDChristmasTree=1                                         " 使得窗口有更好看的效果
let NERDTreeMouseMode=1                                         " 双击鼠标左键打开文件
let NERDTreeWinSize=25                                          " 设置窗口宽度为25
let NERDTreeQuitOnOpen=1                                        " 打开一个文件时nerdtree分栏自动关闭





let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeGitStatusIndicatorMapCustom = {
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

" ==================== coc.nvim ====================
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-go',
	\ 'coc-diagnostic',
	\ 'coc-docker',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-java',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-omnisharp',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" 自动编译文件
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!clear":
                exec "!time python3 %"
        elseif &filetype == 'html'
                exec "!firefox % &"
        elseif &filetype == 'go'
                " exec "!go build %<"
                exec "!time go run %"
        elseif &filetype == 'mkd'
                exec "!~/.vim/markdown.pl % > %.html &"
                exec "!firefox %.html &"
        endif
endfunc


" Python自动插入文件标题
 autocmd BufNewFile *py exec ":call SetPythonTitle()"
 func SetPythonTitle()
  call setline(1,"# Copyright (c) Animezjy  All Rights Reserved.")
  call append(line("."), "\# File Name: ".("%"))
  call append(line(".")+1, "\# Author: Stiles Yu")
  call append(line(".")+2, "\# mail: yuxiaochen886@gmail.com")
  call append(line(".")+3,"\# github:https://github.com/Stilesyu")
  call append(line(".")+4,"\# blog:http://www.stilesyu.com/")
  call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))
 endfunc






call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'ajmwagar/vim-deus'



Plug 'mhinz/vim-startify'

" 目录插件
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hzchirs/vim-material'
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }
Plug 'thanethomson/vim-jenkinsfile'

"模糊查询插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "极限搜索文件
Plug 'junegunn/fzf.vim'
Plug 'dkarter/bullets.vim'

"ranger
Plug 'francoiscabrol/ranger.vim'

"代码片段补全
Plug 'honza/vim-snippets'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'


"给字符串快速添加双引号
Plug 'tpope/vim-surround'


" markdown自动预览
Plug 'iamcco/markdown-preview.nvim'

call plug#end()



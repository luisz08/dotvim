
"显示行号
set number

"语法高亮
syntax on

"用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"设置默认样式
color desert

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'L9'
Bundle 'flazz/vim-colorschemes'

"Bundle 'git://git.wincent.com/command-t.git'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"设置ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '..'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {
"	\ 'dir': '\v[\/]\.(git)$'
"	\ 'file': '\v\.(log|jpg|png|jpeg)$'
"\}
let g:ctrlp_user_command = 'find %s -type f'

"auto-save
"let g:auto_save = 1

"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F5> :NERDTreeToggle<CR>



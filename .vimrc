set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


imap ii <Esc>
map <F3> :w !detex \| wc -w<CR>
nmap <F8> :TagbarToggle<CR>
syntax on

let python_highlight_all=1

filetype indent plugin on

if has('gui_running')
    set background=dark
    color solarized
    set spell
    setlocal spell spelllang=en_us
    set guifont=Monospace\ 12
else
    color distinguished
endif

set columns=79
set showmatch
set number
set incsearch
set scrolloff=5

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"

set modeline
set modelines=1

au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.md set filetype=markdown

" For YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_insertion = 1

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-python/python-syntax'
Plug 'nvie/vim-flake8'
Plug 'Valloric/YouCompleteMe'
call plug#end()            " required

imap ii <Esc>
map <F3> :w !detex \| wc -w<CR>
nmap <F8> :TlistToggle<CR>
syntax on


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

set columns=83
set numberwidth=4
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
au BufNewFile,BufRead *.wsgi set filetype=python
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.conf set filetype=apache

" For python-syntax
let g:python_highlight_all=1

" For YouCompleteMe
let g:ycm_python_binary_path = '/scratch3/adamw/miniconda3/bin/python3'
let g:ycm_autoclose_preview_window_after_insertion = 1

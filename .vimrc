set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
" Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
" Plugin 'scrooloose/syntastic'

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

" For syntastic
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
"noremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_perl_checkers = ['perl']
"let g:syntastic_enable_perl_checker = 1
"
" For YouCompleteMe
let g:ycm_python_binary_path = '/home/adamw/miniconda3/bin/python3'
let g:ycm_autoclose_preview_window_after_insertion = 1

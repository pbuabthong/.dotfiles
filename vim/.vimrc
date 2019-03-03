"""""""""""""""""""""""""""""""
"""""""  .vimrc files  """"""""
""""" updated 03-01-2019 """"""
"""""""" Pai Buabthong """"""""
""""""" www.paippb.com """"""""
"""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""

set nocompatible " not compatible with vi
set autoread " detect when a file is changed 

"""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""

" set the runtime path to include Vundle
" then initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" or call vundle#begin('path/to/Vundle')
" without appending the runtime path

Plugin 'gmarik/Vundle.vim'

" Other plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""

" switch on syntax highlighting
let python_highlight_all=1
syntax on

" searching options
set ignorecase " case insensitive
set smartcase " only case-sensitive when the expression contains a capital letter
set hlsearch " highlight results

set showmatch " show matching braces

" encoding
set encoding=utf8

set number

"""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""

set autoindent
set smartindent

set splitbelow
set splitright

" enable folding
set foldmethod=indent
set foldlevel=10

" showing invisible characters
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" following PEP8 guidelines
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

"""""""""""""""""""""""""""""""
" => Mapping
"""""""""""""""""""""""""""""""

" now handled with vim-tmux-navigator Plugin
" " navigations between splits
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" set a leader key
let mapleader = ','

"""""""""""""""""""""""""""""""
" => Plugin configurations
"""""""""""""""""""""""""""""""

" SimpylFold
let g:SimpylFold_docstring_preview=1

" NERDTree
let g:NERDTreeQuitOnOpen=1 " close the tab after opening a file
let NERDTreeShowHidden=1 " show hidden files
let g:NERDTreeNodeDelimiter = "\u00a0" " fix ^G prefix in the list

nmap <silent> <leader>k :NERDTreeToggle<cr>

" Vim-airline
let g:airline#extensions#tabline#enabled = 1

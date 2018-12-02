" ### PLUG
" -----------
let s:bundle_dir = '~/.config/nvim/plugged'
let g:plug_shallow = 0
let g:plug_window  = 'enew'
let g:plug_pwindow = 'vertical rightbelow new'

call plug#begin(s:bundle_dir)

Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'

Plug 'nvie/vim-flake8'

call plug#end()
filetype plugin indent on  " allows auto-indenting depending on file type

" color scheme
" ------------
syntax enable
if has('gui_vimr')
  " only for vimr
  colorscheme NeoSolarized
  set background=dark
endif

" general stuff
" -------------
syntax on
set encoding=utf-8          " Always use utf-8 encoding
set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

" YouCompleteMe stuff
" ---------------
let g:ycm_autoclose_preview_window_after_completion = 1

" lightline stuff
" ---------------
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" python stuff
" ------------
let g:python3_host_prog = "/Users/marcelstolin/miniconda3/bin/python"
let python_highlight_all=1
let g:loaded_python_provider = 1 " disable python 2

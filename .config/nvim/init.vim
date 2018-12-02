" ### PLUG
" -----------
let s:bundle_dir = '~/.config/nvim/plugged'
let g:plug_shallow = 0
let g:plug_window  = 'enew'
let g:plug_pwindow = 'vertical rightbelow new'

call plug#begin(s:bundle_dir)

Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'mhinz/vim-startify'

call plug#end()
filetype plugin indent on  " allows auto-indenting depending on file type

" color scheme
" ------------
if has('gui_vimr')
  " only for vimr
  set background=dark
  colorscheme cobalt2
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

" syntastic stuff
" ---------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_exe = 'python3 -m pylint3'

" python stuff
" ------------
let g:python3_host_prog = "/Users/marcelstolin/miniconda3/bin/python"
let python_highlight_all=1
let g:loaded_python_provider = 1 " disable python 2

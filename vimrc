filetype detection and syntax highlighting
filetype plugin indent on
syntax on

runtime macros/matchit.vim

" Show tabs, trailing spaces etc
set list
set listchars=tab:▸\ ,extends:→,precedes:←,nbsp:·,trail:·
set showbreak=↪\

" Appearance
set number " show line numbers
set ruler
set colorcolumn=80,120 " highlight columns at 80 (soft limit) and 120 (hard limit)
set scrolloff=5 " show 5 lines around current always
set sidescrolloff=5 " show 5 columns around current column always

" Indentation (tabs/spaces)
set tabstop=4 " number of spaces per tab
set softtabstop=4 " number of spaces when editing
set shiftwidth=4 " autoindentation also << >> & ==
set expandtab " tabs are actuall space
set autoindent

" Move
set backspace=indent,eol,start " backspace over lines and start indents

" Search
set hlsearch " show all search matches
set ignorecase " case insenitive search
set smartcase " case insensitive if all lower
set incsearch " highlight first match as we type

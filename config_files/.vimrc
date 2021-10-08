" Disable vi compatibility
set nocompatible

" =========== General =============
filetype on
syntax on
set nu
set wildmenu " Better command completion
set list
set title 

" =========== Cursor gestion ======= 
set mouse=a
set cursorline
set cursorcolumn
set ruler

" =========== Searching in file ====
set ignorecase    " Case insensitive
set smartcase     " BUT it is for Capital letters.
set hlsearch

" =========== Tab management ======= 
set autoindent
set tabstop=4      " Make vim input tabs (and not 4 spaces)
set shiftwidth=4   " Tabs appears with length = 4

" =========== Command line =========
set cmdheight=2

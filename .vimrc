" Activate powerline-vim
set laststatus=2

" Disable vi compatibility
set nocompatible

" =========== General =============
filetype on
syntax on
set nu rnu
set wildmenu " Better command completion
set list
set title 

" =========== Cursor gestion ======= 
set mouse=a
"set cursorline		" Add line on the current cursor's line
"set cursorcolumn 	" Add the cursor column
set ruler

" =========== Searching in file ====
set ignorecase    " Case insensitive
set smartcase     " BUT it is for Capital letters.
set hlsearch

" =========== Tab management =======
set autoindent
set noexpandtab			" Use tabs (not spaces)
set listchars+=tab:>\ 	" Print tabs as '>   '
set tabstop=4			" Make vim input tabs (and not 4 spaces)
set shiftwidth=4		" Tabs appears with length = 4

" =========== Command line =========
set cmdheight=2			" Set command height to 2 lines

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
set tabstop=4       " Number of spaces a <Tab> counts for
set softtabstop=4   " Number of spaces to insert/delete when using <Tab>/<Backspace>
set shiftwidth=4    " Number of spaces to use for autoindenting
set expandtab       " Use spaces instead of tabs

set listchars+=tab:>\ 	" Print tabs as '>   '

autocmd FileType make setlocal noexpandtab " Use tabs in Makefiles

" =========== Command line =========
set cmdheight=2			" Set command height to 2 lines

" ============ Folding =============
set foldmethod=indent
set foldlevel=99
set foldclose=all

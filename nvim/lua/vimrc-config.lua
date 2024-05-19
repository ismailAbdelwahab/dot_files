------------
-- Leader --
------------
vim.g.mapleader = " "

-- Apperance
vim.cmd("filetype on")
vim.cmd("syntax on")
vim.cmd("set termguicolors")

-- Informations
vim.cmd("set nu rnu")
vim.cmd("set wildmenu")
-- Ignore case for command completion
vim.cmd("set ignorecase")
vim.cmd("set list")
vim.cmd("set title")
vim.cmd("set ruler")

-- Tabs
vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Visual block mode
vim.cmd("set virtualedit=block")

-- Split on modifications
vim.cmd("set inccommand=split")

---------------------------------------------
-- Specific modification tied to languages --
---------------------------------------------
vim.cmd("autocmd FileType make setlocal noexpandtab") -- Tabs in makefile

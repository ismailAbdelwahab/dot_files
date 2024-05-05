vim.g.mapleader = " "
-------------
-- General --
-------------
vim.cmd("filetype on")
vim.cmd("syntax on")
vim.cmd("set nu rnu")
vim.cmd("set wildmenu")
vim.cmd("set list")
vim.cmd("set title")
vim.cmd("set ruler")

-- Tabs
vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("autocmd FileType make setlocal noexpandtab") -- Tabs in makefile

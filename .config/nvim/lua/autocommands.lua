-- Makefiles
vim.cmd("autocmd FileType make setlocal noexpandtab")

-- Neorg concealer
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.md"},
  command = "set conceallevel=3"
})

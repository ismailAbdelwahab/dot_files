-- Neo-tree
vim.keymap.set("n", "<C-f>", ":Neotree toggle right<CR>", { desc = "Open the file browser" })

-- Lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Know more about what is hovered" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Jump to code definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Jump to code references" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Act on code under cursor" })

-- None-ls
vim.keymap.set("n", "<Leader>fc", vim.lsp.buf.format, { desc = "Format code" })

-- Tmux
vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>", { desc = "Move focus to LEFT window" })
vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>", { desc = "Move focus to DOWN window" })
vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>", { desc = "Move focus to UP window" })
vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>", { desc = "Move focus to RIGHT window" })

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find file" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Find grep" })

-- Tree sitter
-- Check the "lua/plugins/treesitter.lua" file

-- Completions
-- Check the "lua/plugins/completions.lua" file

-- Treesitter (code selection)
-- Check the "lua/plugins/treesitter.lua" file

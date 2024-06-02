return {
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	{
		"nvim-neorg/neorg",
		dependencies = { "luarocks.nvim" },
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		version = "*", -- Pin Neorg to the latest stable release
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.keybinds"] = {
						config = {
							hook = function(keybinds)
                                -- Edit keymaps here using : https://github.com/nvim-neorg/neorg/wiki/User-Keybinds#setting-up-a-keybind-hook
								-- Unmaps any Neorg key from the `norg` mode
								keybinds.unmap("norg", "n", "gtd")
								keybinds.unmap("norg", "n", keybinds.leader .. "nn")

								-- Equivalent to `keybinds.remap("norg", "n", "<C-Space>, "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>")
								keybinds.remap_event("norg", "n", "<leader>td", "core.qol.todo_items.todo.task_done")
								keybinds.remap_event("norg", "n", "<leader>tu", "core.qol.todo_items.todo.task_undone")
								keybinds.remap_event("norg", "n", "<leader>tp", "core.qol.todo_items.todo.task_pending")
								keybinds.remap_event("norg", "n", "<leader>th", "core.qol.todo_items.todo.task_hold")
								keybinds.remap_event("norg", "n", "<leader>tc", "core.qol.todo_items.todo.task_cancelled")
								keybinds.remap_event("norg", "n", "<leader>tr", "core.qol.todo_items.todo.task_recuring")
								keybinds.remap_event("norg", "n", "<leader>ti", "core.qol.todo_items.todo.task_important")
								keybinds.remap_event("norg", "n", "<leader>tt", "core.qol.todo_items.todo.task_cycle")
                                -- Revove any TODO status on the current line:
								keybinds.map("norg", "n", "<leader>tx", ":lua local line = vim.fn.getline('.'):gsub('%-*(%([^%s]%)%s*', '', 1):gsub('%s*%.%s*', ' ', 1); vim.fn.setline('.', line)<CR>")
							end,
						},
					},
					["core.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					},
					["core.integrations.nvim-cmp"] = {},
					["core.ui.calendar"] = {},
					["core.concealer"] = {}, -- TODO : Check folding config here
					--["core.integrations.image"] = {},
					--["core.latex.renderer"] = {},
					["core.integrations.treesitter"] = {},
					["core.summary"] = {},
					["core.dirman"] = {
						config = {
							workspaces = { notes = "~/Personal/MyNotes/" },
							default_workspace = "notes",
						},
					},
					["core.qol.toc"] = {
						config = { close_after_use = true },
					},
				},
			})
		end,
	},
}

-- TODO shortcuts
-- File management:
--      Exec :Neorg index
--      Exec :Neorg restore or return
-- to pop up the TOC (with left or right arg)
-- Inject metadata <leader>im  check https://github.com/nvim-neorg/neorg/wiki/Metagen
-- Check how to generate summary  -> https://github.com/nvim-neorg/neorg/wiki/Summary
-- Journal => https://github.com/nvim-neorg/neorg/wiki/Journal
--
--
-- Clendar ???????

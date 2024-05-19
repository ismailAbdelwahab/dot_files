return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
        vim.cmd.colorscheme("tokyonight-moon")
	end,
}

--{
--	"rebelot/kanagawa.nvim",
--	config = function()
--		vim.cmd.colorscheme("kanagawa-wave")
--	end,
--}

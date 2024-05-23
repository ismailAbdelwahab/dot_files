return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = {
				"icon",
				"permissions",
				"size",
				--"mtime",
			},
		})
	end,
}

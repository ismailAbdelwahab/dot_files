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

            float = { -- Padding around the floating window
                padding = 10,
                max_width = 0,
                max_height = 0,
                border = "rounded",
                win_options = {
                    winblend = 0,
                },
            },
        })
    end,
}

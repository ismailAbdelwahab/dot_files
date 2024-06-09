return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        }, -- cmp_luasnip to help LuaSnip
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- nvim-cmp will USE luasnip for autocompletions
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    -- Disable default <Down> mapping to avoid conflict
                    ["<Down>"] = function(fallback)
                        if cmp.visible() then
                            cmp.close()
                            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Down>", true, true, true), "n", true)
                        else
                            fallback()
                        end
                    end,
                    -- Disable default <Up> mapping to avoid conflict
                    ["<Up>"] = function(fallback)
                        if cmp.visible() then
                            cmp.close()
                            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Up>", true, true, true), "n", true)
                        else
                            fallback()
                        end
                    end,
                }),
                sources = cmp.config.sources({
                    { name = "neorg" },
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "buffer" },
                }),
            })
        end,
    },
}

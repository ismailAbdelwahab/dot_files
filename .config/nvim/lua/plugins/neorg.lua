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
                    ["core.completion"] = {
                        config = {
                            engine = "nvim-cmp",
                        },
                    },
                    ["core.integrations.nvim-cmp"] = {},
                    ["core.concealer"] = {}, -- TODO : Check folding config here
                    --["core.integrations.image"] = {},
                    --["core.latex.renderer"] = {},
                    ["core.dirman"] = {
                        config = {
                            workspaces = { notes = "~/Documents/Notes/" },
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

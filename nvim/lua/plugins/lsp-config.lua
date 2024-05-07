return {
    { -- MASON installation
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    { -- List of LSP servers to use
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls", --Lua 
                    "marksman", -- Markdown
                    "bashls", -- Bash
                    "clangd", -- C && C++
                    "basedpyright", -- Python
                    "jsonls", -- JSON
                    "texlab", -- LaTeX
                    "dockerls", -- Docker
                    "autotools_ls", -- Make

                    "html", -- html
                    "intelephense", -- PHP
                    "sqls", -- SQL
                }
            })
        end
    },
    { -- Make nvim use those LSP servers
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.bashls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.basedpyright.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.texlab.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.autotools_ls.setup({})
            lspconfig.html.setup({})
            lspconfig.phpactor.setup({})
            lspconfig.sqls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}

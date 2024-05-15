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
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({capabilities=capabilities})
            lspconfig.marksman.setup({capabilities=capabilities})
            lspconfig.bashls.setup({capabilities=capabilities})
            lspconfig.clangd.setup({capabilities=capabilities})
            lspconfig.basedpyright.setup({capabilities=capabilities})
            lspconfig.jsonls.setup({capabilities=capabilities})
            lspconfig.texlab.setup({capabilities=capabilities})
            lspconfig.dockerls.setup({capabilities=capabilities})
            lspconfig.autotools_ls.setup({capabilities=capabilities})
            lspconfig.html.setup({capabilities=capabilities})
            lspconfig.phpactor.setup({capabilities=capabilities})
            lspconfig.sqls.setup({capabilities=capabilities})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- Know more about what hovered
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {}) -- Jump to code definition
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {}) -- Jump to code references
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- Act on code under cursor
        end
    },
}

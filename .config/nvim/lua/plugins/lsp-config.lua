return {
    { -- MASON installation
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    { -- List of LSP servers to use
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({})
            local handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            }
            require("mason-lspconfig").setup_handlers(handlers)
        end,
    },

    { -- Make nvim use those LSP servers
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.marksman.setup({ capabilities = capabilities })
            lspconfig.bashls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.basedpyright.setup({ capabilities = capabilities })
            lspconfig.jsonls.setup({ capabilities = capabilities })
            lspconfig.texlab.setup({ capabilities = capabilities })
            lspconfig.dockerls.setup({ capabilities = capabilities })
            lspconfig.autotools_ls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.phpactor.setup({ capabilities = capabilities })
            lspconfig.sqls.setup({ capabilities = capabilities })

        end,
    },
}

return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- List of available sources: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
                null_ls.builtins.formatting.prettier,
                -- Lua
                null_ls.builtins.formatting.stylua,
                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                -- C, cpp
                null_ls.builtins.formatting.cppcheck,
                -- JavaScript, TypeScript, JSON, HTML, Markdown, and CSS
                null_ls.builtins.formatting.biome,
                -- Go
                null_ls.builtins.diagnostics.golangci_lint,
                -- Rust
                null_ls.builtins.formatting.dxfmt,
            },
        })
    end,
}

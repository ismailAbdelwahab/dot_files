return { 
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            --ensure_installed = {
            --    "lua", "python", "c", "cpp", "bash", "sql", "php", "java", "http", "css",
            --    "json", "xml", "make", "passwd", "objdump", "gitignore", "csv",
            --    "markdown", "latex", "bibtex",
            --},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

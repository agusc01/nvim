return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter").setup({
                highlight = { enable = true, additional_vim_regex_highlighting = false },
                indent = { enable = true },
                auto_install = true,
                -- ensure_installed = {
                --     "bash",
                --     "c",
                --     "cmake",
                --     "css",
                --     "csv",
                --     "fish",
                --     "html",
                --     "javascript",
                --     "json",
                --     "lua",
                --     "make",
                --     "mason",
                --     "nginx",
                --     "php",
                --     "scss",
                --     "sql",
                --     "markdown",
                --     "markdown_inline",
                --     "query",
                --     "regex",
                --     "tsx",
                --     "typescript",
                --     "vim",
                --     "yaml",
                -- },
            })
        end,
    },
}

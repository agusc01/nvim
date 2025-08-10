return {
    {
        -- INFO:  You have to install
        -- :MasonInstall stylua prettier eslint_d
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua.with({
                        extra_args = { "--config-path", "~/.config/nvim/stylua.toml" },
                    }),
                    null_ls.builtins.formatting.prettier.with({
                        extra_args = { "--config", "~/.config/nvim/.prettierrc" },
                    }),
                    null_ls.builtins.diagnostics.eslint_d,
                },
            })
        end,
        keys = {
            {
                "<M-p>",
                function()
                    vim.lsp.buf.format()
                end,
                mode = "n",
                desc = "LSP Formatting",
            },
            {
                "<leader>p",
                function()
                    local start_line = vim.fn.line("'<")
                    local end_line = vim.fn.line("'>")
                    vim.lsp.buf.format({
                        range = {
                            ["start"] = { start_line - 1, 0 },
                            ["end"] = { end_line - 1, 0 }
                        }
                    })
                end,
                mode = "v",
                desc = "LSP Formatting (Visual Selection)",
            },

        },
    },
}

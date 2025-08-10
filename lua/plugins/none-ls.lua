return {
    {
        -- INFO:  You have to install
        -- :MasonInstall stylua
        -- :MasonInstall prettier
        -- :MasonInstall eslint_d
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
                    -- null_ls.builtins.diagnostics.eslint_d,
                },
            })
        end,
        keys = {},
    },
}

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({

                automatic_installation = true,
                ensure_installed = {
                    "lua_ls",
                    "eslint",
                    -- "eslint_d", -- :MasonInstall eslint_d
                    "denols",
                    "ts_ls",
                    -- "fish-lsp", -- :MasonInstall fish-lsp
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.denols.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.fish_lsp.setup({})
        end,

        keys = {
            {
                "<M-h>",
                function()
                    vim.lsp.buf.hover()
                end,
                mode = "n",
                desc = "LSP Hover",
            },
            {
                "<M-d>",
                function()
                    vim.lsp.buf.definition()
                end,
                mode = "n",
                desc = "LSP Definition",
            },
            {
                "<M-r>",
                function()
                    vim.lsp.buf.references()
                end,
                mode = "n",
                desc = "LSP References",
            },
            {
                "<M-i>",
                function()
                    vim.lsp.buf.implementation()
                end,
                mode = "n",
                desc = "LSP Implementation",
            },
            {
                "<M-a>",
                function()
                    vim.lsp.buf.code_action()
                end,
                mode = "n",
                desc = "LSP Code Action",
            },
            {
                "<M-c>",
                function()
                    vim.lsp.buf.rename()
                end,
                mode = "n",
                desc = "LSP Rename",
            },
        },
    },
}

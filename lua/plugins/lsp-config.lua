return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            -- lspconfig.eslint.setup({
            --     capabilities = capabilities
            -- })
            -- lspconfig.denols.setup({
            --     capabilities = capabilities
            -- })
            -- lspconfig.ts_ls.setup({
            --     capabilities = capabilities
            -- })
            lspconfig.html.setup({
                capabilities = capabilities,
            })
            lspconfig.fish_lsp.setup({
                capabilities = capabilities,
            })
        end,

        keys = {
            {
                "<leader>h",
                function()
                    vim.lsp.buf.hover()
                end,
                mode = { "n" },
                desc = "LSP Hover",
            },
            {
                "<leader>ch",
                function()
                    vim.lsp.buf.hover()
                end,
                mode = { "n" },
                desc = "LSP Hover",
            },
            {
                "<leader>cD",
                function()
                    vim.lsp.buf.definition()
                end,
                mode = { "n" },
                desc = "LSP Definition",
            },
            {
                "<leader>ci",
                function()
                    vim.lsp.buf.references()
                end,
                mode = { "n" },
                desc = "LSP References",
            },
            {
                "<leader>cI",
                function()
                    vim.lsp.buf.implementation()
                end,
                mode = { "n" },
                desc = "LSP Implementation",
            },
            {
                "<leader>ca",
                function()
                    vim.lsp.buf.code_action()
                end,
                mode = { "n" },
                desc = "LSP Code Action",
            },
            {
                "<leader>cf",
                function()
                    vim.lsp.buf.format()
                end,
                mode = { "n" },
                desc = "LSP Format",
            },
            {
                "<leader>cf",
                function()
                    local start_line = vim.fn.line("'<")
                    local end_line = vim.fn.line("'>")
                    vim.lsp.buf.format({
                        range = {
                            ["start"] = { start_line - 1, 0 },
                            ["end"] = { end_line - 1, 0 },
                        },
                    })
                end,
                mode = { "v" },
                desc = "LSP Formatting (Visual Selection)",
            },
            {
                "<leader>cv",
                function()
                    vim.lsp.buf.rename()
                end,
                mode = { "n" },
                desc = "LSP Rename",
            },
        },
    },
}

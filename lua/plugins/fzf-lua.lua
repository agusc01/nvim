return {
    {
        "ibhagwan/fzf-lua",
        opts = function()
            local fzf = require("fzf-lua")
            local config = fzf.config

            -- Quickfix
            config.defaults.keymap.fzf["ctrl-q"] = "select-all+accept"
            config.defaults.keymap.fzf["ctrl-u"] = "half-page-up"
            config.defaults.keymap.fzf["ctrl-d"] = "half-page-down"
            config.defaults.keymap.fzf["ctrl-x"] = "jump"
            config.defaults.keymap.fzf["ctrl-f"] = "preview-page-down"
            config.defaults.keymap.fzf["ctrl-b"] = "preview-page-up"
            config.defaults.keymap.builtin["<c-f>"] = "preview-page-down"
            config.defaults.keymap.builtin["<c-b>"] = "preview-page-up"
        end,
        keys = {
            -- INFO: this 3 comands now in Telescope
            -- {
            --   "<S-p>",
            --   "<cmd>FzfLua command_history<cr>",
            --   mode = { "n" },
            --   desc = "Command History",
            -- },
            -- {
            --   "<C-p>",
            --   "<cmd>FzfLua git_files<cr>",
            --   mode = { "n" },
            --   desc = "FzfLua Find Files",
            -- },
            -- {
            --   "<C-r>",
            --   "<cmd>FzfLua oldfiles<cr>",
            --   mode = { "n" },
            --   desc = "FzfLua recent files",
            -- },
            {
                '"',
                "<cmd>FzfLua registers<cr>",
                mode = { "n", "v" },
                desc = "FzfLua registers",
            },
            {
                "<M-2>",
                "<cmd>FzfLua registers<cr>",
                mode = { "i" },
                desc = "FzfLua registers",
            },
        },
    },
}

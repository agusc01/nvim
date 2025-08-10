return {
    {
        "numToStr/Comment.nvim",
        keys = {
            {
                "<leader>;",
                "<Plug>(comment_toggle_linewise_visual)",
                mode = { "v" },
                desc = "Toggle Comment Line",
            },
            {
                "<leader>:",
                "<Plug>(comment_toggle_blockwise_visual)",
                mode = { "v" },
                desc = "Toggle Comment Block",
            },
            {
                "<leader>;",
                "<Plug>(comment_toggle_linewise_current)",
                mode = { "n" },
                desc = "Toggle Comment Line",
            },
            {
                "<leader>:",
                "<Plug>(comment_toggle_blockwise_current)",
                mode = { "n" },
                desc = "Toggle Comment Block",
            },
        },
    },
}

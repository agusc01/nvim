return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>pg",
                function()
                    local search = vim.fn.expand("<cword>")
                    local prompt_title = "Grep Live"
                    local telescope = require("telescope.builtin")
                    telescope.live_grep({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = prompt_title,
                        default_text = search,
                        sorting_strategy = "ascending",
                        smart_case = true,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = { "n" },
                desc = "Grep Live",
            },
            {
                "<leader>ph",
                function()
                    -- local search = vim.fn.expand("<cword>")
                    local title = "Grep Current Buffer (Search History)"
                    Snacks.picker.search_history({
                        -- search = search,
                        title = title,
                    })
                end,
                mode = { "n" },
                desc = "Grep Current Buffer (Search History)",
            },
            {
                "<leader>pb",
                function()
                    local search = vim.fn.expand("<cword>")
                    local title = "Grep Current Buffer"
                    Snacks.picker.lines({
                        search = search,
                        title = title,
                    })
                end,
                mode = { "n" },
                desc = "Grep Current Buffer",
            },
            {
                "<leader>pB",
                function()
                    local search = vim.fn.expand("<cword>")
                    local title = "Grep Open Buffers"
                    Snacks.picker.grep_buffers({
                        search = search,
                        title = title,
                    })
                end,
                mode = { "n" },
                desc = "Grep Open Buffers",
            },
            {
                "<leader>pb",
                function()
                    local search = vim.fn.getreg('"')
                    local title = "Grep Current Buffer"
                    Snacks.picker.lines({
                        search = search,
                        title = title,
                    })
                end,
                mode = { "v" },
                desc = "Grep Current Buffers",
            },
            {
                "<leader>pB",
                function()
                    local search = vim.fn.getreg('"')
                    local title = "Grep Open Buffers"
                    Snacks.picker.grep_buffers({
                        search = search,
                        title = title,
                    })
                end,
                mode = { "v" },
                desc = "Grep Open Buffers",
            },
            {
                "<leader>pp",
                function()
                    local telescope = require("telescope.builtin")
                    local success, err = pcall(telescope.git_files, {
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Find Git Files",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })

                    if not success then
                        print("Error: You are not in a .git")
                        -- Fallback to find_files if git_files fails
                        telescope.find_files({
                            layout_strategy = "horizontal",
                            layout_config = { prompt_position = "top" },
                            prompt_title = "Find Files",
                            sorting_strategy = "ascending",
                            smart_case = true,
                            attach_mappings = function(_, map)
                                local action = require("telescope.actions")
                                map("i", "<C-j>", action.move_selection_next)
                                map("i", "<C-k>", action.move_selection_previous)
                                return true
                            end,
                        })
                    end
                end,
                mode = { "n" },
                desc = "Telescope Git Files Or Find Files",
            },
            {
                "<leader>pr",
                function()
                    Snacks.picker.recent({ filter = { cwd = false } })
                end,
                desc = "Recent Files"
            },
            {
                "<leader>pR",
                function()
                    Snacks.picker.recent({ filter = { cwd = true } })
                end,
                desc = "Recent Files (cwd)"
            },
        },
    },
}

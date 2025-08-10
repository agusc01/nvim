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
                "<leader>sf",
                function()
                    local search = vim.fn.expand("<cword>")
                    local telescope = require("telescope.builtin")
                    telescope.current_buffer_fuzzy_find({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Current File Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "n",
                desc = "Find <cword> in current file",
            },
            {
                "<leader>sF",
                function()
                    local search = vim.fn.expand("<cword>")
                    local telescope = require("telescope.builtin")
                    telescope.grep_string({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Buffers Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "n",
                desc = "Find <cword> in buffers",
            },
            {
                "<leader>sA",
                function()
                    local search = vim.fn.expand("<cword>")
                    local telescope = require("telescope.builtin")
                    telescope.live_grep({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "n",
                desc = "Find <cword> in all files",
            },
            {
                "<leader>sf",
                function()
                    local search = vim.fn.getreg('"')
                    local telescope = require("telescope.builtin")
                    telescope.current_buffer_fuzzy_find({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Current File Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "v",
                desc = "Find (visual) in current file",
            },
            {
                "<leader>sF",
                function()
                    local search = vim.fn.getreg('"')
                    local telescope = require("telescope.builtin")
                    telescope.grep_string({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Buffers Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "v",
                desc = "Find (visual) in buffers",
            },
            {
                "<leader>sA",
                function()
                    local search = vim.fn.getreg('"')
                    local telescope = require("telescope.builtin")
                    telescope.live_grep({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Grep (" .. search .. ")",
                        sorting_strategy = "ascending",
                        smart_case = true,
                        default_text = search,
                        attach_mappings = function(_, map)
                            local action = require("telescope.actions")
                            map("i", "<C-j>", action.move_selection_next)
                            map("i", "<C-k>", action.move_selection_previous)
                            return true
                        end,
                    })
                end,
                mode = "v",
                desc = "Find (visual) in all files",
            },
            {
                "<C-b>",
                function()
                    local telescope = require("telescope.builtin")
                    telescope.buffers({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Buffers",
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
                mode = "n",
                desc = "Buffers",
            },
            {
                "<S-p>",
                function()
                    local telescope = require("telescope.builtin")
                    telescope.command_history({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Command History",
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
                mode = "n",
                desc = "Telescope Command History",
            },
            {
                "<C-p>",
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
                mode = "n",
                desc = "Telescope Find Files",
            },
            {
                "<C-r>",
                function()
                    local telescope = require("telescope.builtin")
                    telescope.oldfiles({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Recents Files",
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
                mode = "n",
                desc = "Telescope Recents Files",
            },
            {
                "<M-s>",
                function()
                    local telescope = require("telescope.builtin")
                    telescope.search_history({
                        layout_strategy = "horizontal",
                        layout_config = { prompt_position = "top" },
                        prompt_title = "Search History",
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
                mode = "n",
                desc = "Telescope Search History",
            },
        },
    },
}

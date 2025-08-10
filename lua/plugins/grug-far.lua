return {
    {
        "MagicDuck/grug-far.nvim",
        keys = {
            {
                "<leader>re",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local current_extension = vim.fn.expand("%:e")
                    local current_directory = vim.fn.expand("%:p:h")
                    local paths = vim.fn.globpath(current_directory, "*." .. current_extension)
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> same extensions",
            },
            {
                "<leader>rf",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = vim.fn.expand("%:p") -- current_file (absolute path)
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> current file",
            },
            {
                "<leader>ra",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = ""
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> all files",
            },
            {
                "<leader>rE",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local current_extension = vim.fn.expand("%:e")
                    local current_directory = vim.fn.expand("%:p:h")
                    local paths = vim.fn.globpath(current_directory, "*." .. current_extension)
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> same extensions (-i)",
            },
            {
                "<leader>rF",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = vim.fn.expand("%:p") -- current_file (absolute path)
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> current file (-i)",
            },
            {
                "<leader>rA",
                function()
                    local search = vim.fn.expand("<cword>")
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = ""
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "n" },
                desc = "Find & Replace <cword> all files (-i)",
            },
            {
                "<leader>re",
                function()
                    local search = vim.fn.getreg('"')
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local current_extension = vim.fn.expand("%:e")
                    local current_directory = vim.fn.expand("%:p:h")
                    local paths = vim.fn.globpath(current_directory, "*." .. current_extension)
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) same extensions",
            },
            {
                "<leader>rf",
                function()
                    local search = vim.fn.getreg('"')
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = vim.fn.expand("%:p") -- current_file (absolute path)
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) current file",
            },
            {
                "<leader>ra",
                function()
                    local search = vim.fn.getreg('"')
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local paths = vim.fn.expand("%:p:h")
                    local flags = "--case-sensitive --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) all files",
            },
            {
                "<leader>rE",
                function()
                    local search = vim.fn.getreg('"')
                    if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end
                    local current_extension = vim.fn.expand("%:e")
                    local current_directory = vim.fn.expand("%:p:h")
                    local paths = vim.fn.globpath(current_directory, "*." .. current_extension)
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) same extensions (-i)",
            },
            {
                "<leader>rF",
                function()
                    local search = vim.fn.getreg('"')
                      if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end                  local paths = vim.fn.expand("%:p") -- current_file (absolute path)
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) current file (-i)",
            },
            {
                "<leader>rA",
                function()
                    local search = vim.fn.getreg('"')
                     if search == "" then
                        vim.notify("There is no word selected.", vim.log.levels.INFO)
                        return
                    end                   local paths = vim.fn.expand("%:p:h")
                    local flags = "--ignore-case --fixed-strings"
                    local grug = require("grug-far")
                    grug.open({
                        transient = true,
                        prefills = {
                            search = search,
                            paths = paths,
                            flags = flags,
                        },
                    })
                end,
                mode = { "v" },
                desc = "Find & Replace (visual) all files (-i)",
            },
        },
    },
}

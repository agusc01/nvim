-- This autocommand is useful for ensuring that when you exit insert mode,
-- the editor returns to a normal state where "paste" mode is not active.
-- This is important because "paste" mode can alter how line breaks and
-- other characters are handled when pasting text,
-- potentially causing formatting issues. By automatically disabling it,
-- the editing experience is improved, and confusion is avoided when working
-- with different types of content.
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
-- So you can see all the characters
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "json", "jsonc", "markdown" },
    callback = function()
        vim.opt.conceallevel = 0
    end,
})

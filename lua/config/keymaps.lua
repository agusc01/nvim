local map = vim.keymap.set

map("n", "<c-n>", "<cmd>enew<cr>", { desc = "New File" })

map("n", "<leader>7", 'yiwb/<C-R>"', { desc = "Find current word PRE search" })
map("n", "<leader>8", 'yiwb/<C-R>"<CR>', { desc = "Find current word POST search" })
map("v", "<leader>7", 'yb/<C-R>"', { desc = "Find current word PRE search" })
map("v", "<leader>8", 'yb/<C-R>"<CR>', { desc = "Find current word POST search" })

map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- map("n", "<C-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
-- map("n", "<C-S-Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

map("n", "<leader>d", "yyp", { desc = "Duplicate line" })
map("v", "<leader>d", "y<Esc>p", { desc = "Duplicate line" })

map("v", "<Tab>", ">gv", { desc = "Increment tabulation" })
map("n", "<Tab>", ">>_", { desc = "Increment tabulation" })
map("v", "<S-Tab>", "<gv", { desc = "Decrement tabulation" })
map("n", "<S-Tab>", "<<_", { desc = "Decrement tabulation" })

map("v", "$", "$h", { desc = "Back to a character" })

map("n", "<leader>j", "0v$", { desc = "Select line and go down (0v$)" })
map("n", "<leader>J", "v$", { desc = "Select from cursor position and go down (v$)" })
map("n", "<leader>k", "$v0", { desc = "Select line and go up ($v0)" })
map("n", "<leader>K", "v0", { desc = "Select from cursor position and go up (v0)" })

map("n", "<C-w>", ":q<Cr>", { desc = "Save file", silent = false })
map({ "v", "i" }, "<C-w>", "<Esc>:q<Cr>", { desc = "Save file", silent = false })

map("n", "<S-s>", "viw", { desc = "Select current word" })
map("n", "<S-w>", "yiw", { desc = "Copy current word" })

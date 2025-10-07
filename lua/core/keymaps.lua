-- Clipboard Settings
    vim.keymap.set({"n", "v"} , "d", "\"_d") -- delete to black hole register
    vim.keymap.set({"n", "v"}, "x", "\"_x")

    vim.keymap.set({"n", "v"} , "<leader>d", "d") -- delete to unnamed register

    vim.keymap.set("v", "p", "\"_dP")
    vim.keymap.set("v", "<leader>p", "p")

-- Keep the cursor centered when half page scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG")

-- Retain selected contents when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Insert new line in normal mode
vim.keymap.set("n", "<CR>", "o<Esc>") 

-- move selection in visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Save file
vim.keymap.set("n", "<leader>s", ":w<CR>") 

-- Open file explorer
vim.keymap.set("n", "<leader>e", ":Ex<CR>") 

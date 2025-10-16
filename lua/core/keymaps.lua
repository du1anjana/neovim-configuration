local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Clipboard Settings
keymap({"n", "v"} , "d", "\"_d", opts) -- delete to black hole register
keymap({"n", "v"}, "x", "\"_x", opts)

keymap({"n", "v"} , "<leader>d", "d", opts) -- delete to unnamed register

keymap("v", "p", "\"_dP", opts)
keymap("v", "<leader>p", "p", opts)

-- Keep the cursor centered when half page scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Keep search terms in the middle
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", opts)

-- Retain selected contents when indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Insert new line in normal mode
keymap("n", "<CR>", "o<Esc>", opts) 

-- move selection in visual mode
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Save file
keymap("n", "<leader>s", ":w<CR>", opts) 

-- Open file explorer
keymap("n", "<leader>e", ":Ex<CR>", opts) 

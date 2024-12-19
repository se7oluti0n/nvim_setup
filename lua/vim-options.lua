vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set rnu")
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<C-q>q", "<cmd>q<CR>", { desc = "Quit buffer" })
map("n", "<C-q>a", "<cmd>qa<CR>", { desc ="Quit all buffer" })
map("v", "<C-c>", "\"+y", { desc ="Copy to system clipboard" })
map("n", "<leader>cv", "\"+p", { desc ="Paste from system clipboard" })
map({'n', 'i'}, "<C-s>", "<cmd>write<CR>", { desc ="save buffer" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Escapte Terminal mode" })

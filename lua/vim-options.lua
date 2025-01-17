vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set conceallevel=1")
vim.cmd("set rnu")
vim.cmd("set nu")
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<C-q>q", "<cmd>q<CR>", { desc = "Quit buffer" })
map("n", "<C-q>a", "<cmd>qa<CR>", { desc ="Quit all buffer" })
map("n", "<C-q>A", "<cmd>qa!<CR>", { desc ="Quit all buffer no save" })
map("v", "<C-c>", "\"+y", { desc ="Copy to system clipboard" })
map("n", "<leader>cv", "\"+p", { desc ="Paste from system clipboard" })
map({'n', 'i'}, "<C-s>", "<cmd>write<CR>", { desc ="save buffer" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Escapte Terminal mode" })
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
map('n', '<M-j>', 'ddjP', { noremap = true, silent = true })
map('n', '<M-k>', 'ddkP', { noremap = true, silent = true })
map('v', '<M-j>', 'djP', { noremap = true, silent = true })
map('v', '<M-k>', 'dkP', { noremap = true, silent = true })
function OpenTerminalInVSplit()
  vim.cmd('vsplit')
  vim.cmd('terminal')
  vim.cmd('startinsert') -- Automatically enter insert mode
end
map('n', '<leader>`', ':lua OpenTerminalInVSplit()<CR>', { noremap = true, silent = true })

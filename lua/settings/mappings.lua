vim.g.mapleader="`"

local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- default mapping structure:
-- keymap( [mode], [character], [action], [options]) 
--

-- reload config files:
vim.api.nvim_set_keymap("n", "<leader>r", ":luafile %<cr>", {noremap = true, silent = true})

-- move up & down 10 spaces:
vim.api.nvim_set_keymap("n", "<C-j>", "10j", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-k>", "10k", {noremap = true})


-- splitting window:
vim.api.nvim_set_keymap("n", "<leader>vs", ":vsplit<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>s", ":split<cr>", {noremap = true})

-- split window navigation (CONTROL + SHIFT + h,j,k,l)
vim.api.nvim_set_keymap("n", "<C-H>", "<C-w>h", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-J>", "<C-w>j", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-K>", "<C-w>k", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-L>", "<C-w>l", {noremap = true})


-- buffer moving:

vim.api.nvim_set_keymap("n", "<Tab>", ":bn<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bp<cr>", {noremap = true})

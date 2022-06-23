vim.g.mapleader="`"

local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- default mapping structure:
-- keymap( [mode], [character], [action], [options]) 
--

vim.api.nvim_set_keymap("n", "<leader>r", ":luafile %<cr>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<leader>r", ":luafile %<cr>", {noremap = true})


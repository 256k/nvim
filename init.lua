-- 2024 nvim config

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " " -- Same for `maplocalleader`

vim.o.hlsearch = false          -- Set highlight on search
vim.wo.relativenumber = true
vim.o.mouse = 'a'               -- Enable mouse mode
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.o.breakindent = true        -- Enable break indent
vim.o.undofile = true           -- Save undo history
vim.o.ignorecase = true         -- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'       -- Keep signcolumn on by default
vim.o.updatetime = 250          -- Decrease update time,
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.o.termguicolors = true             -- NOTE: You should make sure your terminal supports this
vim.cmd.colorscheme 'habamax'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

	{"folke/which-key.nvim"},
  	{"folke/neoconf.nvim", cmd = "Neoconf" },
	{"folke/neodev.nvim"},
	{"tpope/vim-fugitive"},
    	{'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' }}
})

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here





  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use 'EdenEast/nightfox.nvim' -- colorscheme
  use 'nvim-lua/plenary.nvim'  -- useful for many plugins
  use 'nvim-telescope/telescope.nvim' -- fuzzy finder
  use 'preservim/nerdtree' -- file tree explorer

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- surround text with stuff
  use 'tpope/vim-surround' 



 -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"


  -- use { 'nvim-treesitter/nvim-treesitter' }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)


-- " Plug 'airblade/vim-gitgutter'
-- " Plug 'tpope/vim-surround' " this is the select an object and surround it with brackets or change its surrounding brackets
-- " Plug 'nvim-lua/plenary.nvim' " required for telescope
-- " Plug 'nvim-telescope/telescope.nvim' " a fuzzy search plugin for neovim (fzf replacement)
-- " Plug 'EdenEast/nightfox.nvim' " color scheme
-- " Plug 'preservim/nerdtree' " tree folder manager
-- " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
-- " Plug 'glepnir/indent-guides.nvim' "indentation 
-- Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
-- Plug 'junegunn/fzf.vim'
-- call plug#end()


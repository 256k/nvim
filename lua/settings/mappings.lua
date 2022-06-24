vim.g.mapleader="`"

local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- default mapping structure:
-- keymap( [mode], [character], [action], [options]) 
--

-- reload config files:
keymap("n", "<leader>r", ":luafile %<cr>", opt )


-- splitting window:
keymap("n", "<leader>vs", ":vsplit<cr>", opt )
keymap("n", "<leader>s", ":split<cr>", opt )

-- split window navigation (CONTROL + SHIFT + h,j,k,l)
keymap("n", "<C-H>", "<C-w>h", opt )
keymap("n", "<C-J>", "<C-w>j", opt )
keymap("n", "<C-K>", "<C-w>k", opt )
keymap("n", "<C-L>", "<C-w>l", opt )


-- move up & down 10 spaces:
keymap("n", "<C-j>", "10j", opt )
keymap("n", "<C-k>", "10k", opt )

-- buffer moving:

keymap("n", "<Tab>", ":bn<cr>", opt )
keymap("n", "<S-Tab>", ":bp<cr>", opt )

-- nerdtree shortcuts:

keymap("n", "<C-b>", ":NERDTreeToggle<cr>", opt)
keymap("n", "<C-n>", ":NERDTreeFind<cr>", opt)


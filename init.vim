" SET BUILT IN SETTINGS FOR VIM:
" ==============================

set background=dark
set termguicolors
set expandtab
set smartindent
set number
set relativenumber
set nohlsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=10
set signcolumn=yes
set nowrap
set smartcase
set ignorecase
set mouse=a
set splitbelow
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2



" SET PACKAGE MANAGER & PACKAGES:
" ===============================

"Checks to see if plugin manage is installed or not, if not install it"
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround' " this is the select an object and surround it with brackets or change its surrounding brackets
Plug 'nvim-lua/plenary.nvim' " required for telescope
Plug 'nvim-telescope/telescope.nvim' " a fuzzy search plugin for neovim (fzf replacement)
Plug 'EdenEast/nightfox.nvim' " color scheme
Plug 'preservim/nerdtree' " tree folder manager
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'glepnir/indent-guides.nvim' "indentation 
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
call plug#end()

" SET COLOR THEME:
" ================
colorscheme nordfox

" SET INDENTATION:
" ================

" SET REMAPS:
" ===========

let mapleader ="`"
" n: normal mode, nore: no recursive, map: mapping
nnoremap <leader>ve :vsplit $MYVIMRC <cr>
nnoremap <leader>` :so $MYVIMRC <cr> 
nnoremap <leader>ss :w <cr> :so $MYVIMRC <cr>
nnoremap <leader><Space> :
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <C-p> :Telescope find_files <CR>
nnoremap <C-f> :Telescope live_grep <CR>
nnoremap <C-b> :Telescope buffers <CR>
" nnoremap <C-p> :FZF <CR>
" nnoremap <C-b> :Buffers <CR>
nnoremap <C-j> 10j
nnoremap <C-k> 10k


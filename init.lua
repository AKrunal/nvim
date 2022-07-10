vim.g.mapleader = " "
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- basic
Plug 'https://github.com/luisiacc/gruvbox-baby.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs' -- { to {} commplate


--coc
Plug 'neoclide/coc.nvim'

-- fuzzy finder
Plug 'https://github.com/nvim-telescope/telescope.nvim.git'
Plug 'nvim-lua/plenary.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'https://github.com/kyazdani42/nvim-web-devicons.git'


--github
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'


--extra feture
Plug 'ThePrimeagen/harpoon'
Plug 'https://github.com/ThePrimeagen/refactoring.nvim.git'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter.git'
Plug 'scrooloose/nerdcommenter'


--lsp
Plug 'https://github.com/neovim/nvim-lspconfig.git'
Plug 'https://github.com/github/copilot.vim.git'

vim.call('plug#end')
require('kishan')


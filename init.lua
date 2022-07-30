vim.g.mapleader = " "


local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- basic
Plug 'https://github.com/luisiacc/gruvbox-baby.git'
Plug 'https://github.com/folke/tokyonight.nvim.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs' -- { to {} commplate
Plug 'https://github.com/mbbill/undotree.git'


--text file
Plug 'dkarter/bullets.vim'

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
Plug 'https://github.com/tpope/vim-rhubarb.git'


--extra feture
Plug 'ThePrimeagen/harpoon'
Plug 'https://github.com/ThePrimeagen/refactoring.nvim.git'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter.git'
Plug 'scrooloose/nerdcommenter'


--lsp
Plug 'https://github.com/neovim/nvim-lspconfig.git'
--Plug 'https://github.com/github/copilot.vim.git'


--formater
Plug 'https://github.com/prettier/vim-prettier.git'

--debug
Plug 'https://github.com/mfussenegger/nvim-dap.git'
Plug 'https://github.com/nvim-telescope/telescope-dap.nvim.git'
Plug 'https://github.com/rcarriga/nvim-dap-ui.git'
Plug 'https://github.com/leoluz/nvim-dap-go.git' --go-dap
Plug 'https://github.com/mfussenegger/nvim-dap-python.git'


--for go only
Plug 'https://github.com/fatih/vim-go.git'

--for display
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/junegunn/limelight.vim.git'


--my plug
Plug '/home/kishan/plugins/Runner/'

Plug 'https://github.com/nvim-lua/plenary.nvim.git'

--lua with help
Plug 'https://github.com/nanotee/luv-vimdocs.git'
Plug 'https://github.com/milisims/nvim-luaref.git'

vim.call('plug#end')
require('kishan')

-- makking plugins
RELOAD = function(...)
    return require("plenary.reload").reload_module(...)
end

R = function(v)
    RELOAD(v)
    return require(v)
end
P = function(v)
    print(vim.inspect(v))
    return v
end

require('runner').setcommand()

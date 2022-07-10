vim.cmd("colorscheme gruvbox-baby")
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n","<leader>t",":call TrimWhitespace()<CR>",{silent = true})


-- alter + up down j and k mapping
-- alter j
map("i","A-j>","<Esc>:m+<cr>==gi",{silent = true})
map("n","<A-j>",":m+<cr>==",{silent = true})
map("v","<A-j>",":m'>+<cr>gv=gv",{silent = true})
--alter k
map("n","<A-k>",":m-2<cr>==",{silent = true})
map("i","<A-k>","<Esc>:m-2<cr>==gi",{silent = true})
map("v","<A-k>",":m-2<cr>gv=gv",{silent = true})
--alter down
map("n","<A-down>",":m+<cr>==",{silent = true})
map("i","<A-down>","<Esc>:m+<cr>==gi",{silent = true})
map("v","<A-down>",":m'>+<cr>gv=gv",{silent = true})
--alter k
map("i","<A-up>","<Esc>:m-2<cr>==gi",{silent = true})
map("n","<A-up>",":m-2<cr>==",{silent = true})
map("v","<A-up>",":m-2<cr>gv=gv",{silent = true})


--ctrl hjkl
map("n","<C-h>","<C-w><C-h>",{silent = true})
map("n","<C-k>","<C-w><C-k>",{silent = true})
map("n","<C-j>","<C-w><C-j>",{silent = true})
map("n","<C-l>","<C-w><C-l>",{silent = true})


--source  file  setting
map("n","<leader>r","<cr>",{silent = true})

-- maximizer thing
map("n","<leader>m",":resize 100!!<Cr>",{silent = true})


-- functon key may
map("n","<F1>","<cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_ivy())<cr>",{silent = true})
map("n","<F2>","<Plug>(coc-rename)",{silent = false})
-- f3 is the map for harpoon.lua
map("n","<F5>",":lua package.loaded.kishan = nil<cr>:so $MYVIMRC<cr>:lua print('reloaded')<cr>",{silent = true})

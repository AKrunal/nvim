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
map("n","<A-j>",":m+<cr>==",{silent = true})
map("i","<A-j>","<Esc>:m+<cr>==gi",{silent = true})
map("n","<A-j>",":m'>+<cr>gv=gv",{silent = true})
--alter k
map("n","<A-k>",":m-2<cr>==",{silent = true})
map("i","<A-k>","<Esc>:m-2<cr>==gi",{silent = true})
map("n","<A-k>",":m-2<cr>gv=gv",{silent = true})
--alter down
map("n","<A-down>",":m+<cr>==",{silent = true})
map("i","<A-down>","<Esc>:m+<cr>==gi",{silent = true})
map("n","<A-down>",":m'>+<cr>gv=gv",{silent = true})
--alter k
map("n","<A-up>",":m-2<cr>==",{silent = true})
map("i","<A-up>","<Esc>:m-2<cr>==gi",{silent = true})
map("n","<A-up>",":m-2<cr>gv=gv",{silent = true})


map("n","<C-_>","",{silent = true})

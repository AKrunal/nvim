local function mapping(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

mapping("n", "<leader>t", ":call TrimWhitespace()<CR>", { silent = true })


-- alter + up down j and k mapping
-- alter j
mapping("i", "A-j>", "<Esc>:m+<cr>==gi", { silent = true })
mapping("n", "<A-j>", ":m+<cr>==", { silent = true })
mapping("v", "<A-j>", ":m'>+<cr>gv=gv", { silent = true })
--alter k
mapping("n", "<A-k>", ":m-2<cr>==", { silent = true })
mapping("i", "<A-k>", "<Esc>:m-2<cr>==gi", { silent = true })
mapping("v", "<A-k>", ":m-2<cr>gv=gv", { silent = true })
--alter down
mapping("n", "<A-down>", ":m+<cr>==", { silent = true })
mapping("i", "<A-down>", "<Esc>:m+<cr>==gi", { silent = true })
mapping("v", "<A-down>", ":m'>+<cr>gv=gv", { silent = true })
--alter k
mapping("n", "<A-up>", ":m-2<cr>==", { silent = true })
mapping("v", "<A-up>", ":m-2<cr>gv=gv", { silent = true })

mapping("i", "<A-up>", "<Esc>:m-2<cr>==gi", { silent = true })

--ctrl hjkl
mapping("n", "<C-h>", "<C-w><C-h>", { silent = true })
mapping("n", "<C-k>", "<C-w><C-k>", { silent = true })
mapping("n", "<C-j>", "<C-w><C-j>", { silent = true })
mapping("n", "<C-l>", "<C-w><C-l>", { silent = true })



-- functon key may
mapping("n", "<F1>", "<cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_ivy())<cr>",
    { silent = true })
mapping("n", "<F2>", "<Plug>(coc-rename)", { silent = false })
mapping("n", "<F4>", ":UndotreeToggle<cr>", { silent = false })
-- f3 is the map for harpoon.lua



mapping("n", "<leader>%", ":vsplit<cr>", { silent = true })

mapping("n", "<leader>n", ":cnext<cr>zz")
mapping("n", "<leader>p", ":cprev<cr>zz")

--display setting

mapping("n", "<F5>", ":Goyo<cr>", { silent = true })
mapping("n", "<leader>l", ":Limelight!!<cr>", { silent = true })


--testing plugins
mapping("n", "<leader>pt", "<Plug>PlenaryTestFile<cr>", { silent = true })
mapping("n", "<F10>", ":lua require('runner').run()<cr>", { silent = true })

mapping("n", "<leader><leader>x", ":w<cr> |:source %<cr>")
mapping("n", "<leader><leader>", ":silent noh<cr>")

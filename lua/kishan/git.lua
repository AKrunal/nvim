function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.gitgutter_max_signs = 500


--mapping
map("n", "<leader>g", ":G<cr>", { silent = true })
map("n", "<leader>gc", ":G commit<cr>", { silent = true })
map("n", "<leader>gp", ":G push<cr>", { silent = true })

map("n", "<leader>gw",
    ":lua require('telescope').extensions.git_worktree.git_worktrees(require('telescope.themes').get_cursor())<CR>",
    { silent = true })
map("n", "<leader>cgw",
    "<cmd> lua require('telescope').load_extension('git_worktree').create_git_worktree(require('telescope.themes').get_dropdown())<Cr>"
    , { silent = true })

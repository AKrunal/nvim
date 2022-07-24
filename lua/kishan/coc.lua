local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function reload_coc()
    vim.cmd("!cd ~/.config/nvim/plugged/coc.nvim && git checkout release")
end

vim.keymap.set("n","<leader>coc",reload_coc,{noremap=true})

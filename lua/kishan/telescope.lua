local actions = require("telescope.actions")
require('telescope').load_extension('coc')
require('telescope').load_extension('git_worktree')


function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- map("n","","",{silent = true})

-- some basic mapping for show file 
map("n","<C-p>","<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown())<cr>",{silent = true})
map("n","<leader>i","<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_ivy())<cr>",{silent = true})
map("n","<leader>c","<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_cursor())<cr>",{silent = true})
map("n","<leader>lg","<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy())<cr>",{silent = true})


--help setting 
--map("n","","",{silent = true})

require("telescope").setup({
    defaults = {
        sorting_strategy = "ascending",
        prompt_prefix = "  ",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})

map("n","<leader>5","<cmd> lua require('telescope').load_extension('coc').file_code_actions(require('telescope.themes').get_dropdown())<cr>",{silent = false})
require('telescope').load_extension('harpoon')

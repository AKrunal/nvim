vim.keymap.set("n","<F3>","<cmd> lua require('harpoon.ui').toggle_quick_menu()<cr>")
vim.keymap.set("n","<A-a>","<cmd> lua require('harpoon.mark').add_file()<cr>")
vim.keymap.set("n","<A-h>","<cmd> lua require('harpoon.ui').nav_prev()<cr>")
vim.keymap.set("n","<A-l>","<cmd> lua require('harpoon.ui').nav_next()<cr>")

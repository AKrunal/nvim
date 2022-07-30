map("n", "<leader>b", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { silent = false })
map("n", "<leader>B", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('BreakPoint Condition :'))<cr>",
    { silent = false })
map("n", "<F9>", "<cmd>lua require('dap').continue()<cr>", { silent = false })
map("n", "<leader>0", "<cmd>lua require('dapui').toggle()<cr>", { silent = false })
map("n", "<leader>1", "<cmd>lua require('dap').step_over()<cr>", { silent = false })
map("n", "<leader>2", "<cmd>lua require('dap').step_into()<cr>", { silent = false })
map("n", "<leader>3", "<cmd>lua require('dap').step_out()<cr>", { silent = false })


--dap loaded open dapui if you want just un comment bello section
--local dap,dapui = require('dap'),require('dapui')
--dap.listeners.after.event_initialized['dapui_config'] = function()
--dapui.open()
--end
--dap.listeners.after.event_terminated['dapui_config'] = function()
--dapui.close()
--end
--dap.listeners.after.event_exited['dapui_config'] = function()
--dapui.close()
--end


--dap-go
require('dap-go').setup({})

--dapui
require('dapui').setup({
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
        -- Use a table to apply multiple mappings
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
    },
    -- Expand lines larger than the window
    -- Requires >= 0.7
    expand_lines = vim.fn.has("nvim-0.7"),
    -- Layouts define sections of the screen to place windows.
    -- The position can be "left", "right", "top" or "bottom".
    -- The size specifies the height/width depending on position. It can be an Int
    -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
    -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
    -- Elements are the elements shown in the layout (in order).
    -- Layouts are opened in order so that earlier layouts take priority in window sizing.
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                { id = "scopes", size = 0.25 },
                "breakpoints",
                "stacks",
                "watches",
            },
            size = 40, -- 40 columns
            position = "left",
        },
        {
            elements = {
                "repl",
                "console",
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
        },
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "single", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
            close = { "q", "<Esc>" },
        },
    },
    windows = { indent = 1 },
    render = {
        max_type_length = nil, -- Can be integer or nil.
    }
})
require('dap-python').setup('~/temp/.virtualenvs/debugpy/bin/python')

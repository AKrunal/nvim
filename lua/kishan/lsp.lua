local sumneko_root_path = "/home/kishan//servers//lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"

require("lspconfig").sumneko_lua.setup({
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
                -- Setup your lua path
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                },
            },
        },
    },
})

require("lspconfig").pyright.setup({
 cmd = { "pyright-langserver", "--stdio" },
 filetypes = { "python" },
    --root_dir = function(startpath)
    --       return M.search_ancestors(startpath, matcher)
    --  end,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        },
      },
    },
    single_file_support = true
})
require("lspconfig").gopls.setup({
    on_attach = function ()
        vim.keymap.set("n","K",vim.lsp.buf.hover,{buffer = 0})
    end,
    cmd = { "gopls", "serve" }, settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
})


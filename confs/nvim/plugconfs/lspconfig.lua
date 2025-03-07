local M = {}
M.methods = {}


function M.setup()
   require'lspconfig'.gopls.setup{}
   require'lspconfig'.tsserver.setup{}
   require'lspconfig'.jsonls.setup{}
   require'lspconfig'.pylsp.setup{}
   require'lspconfig'.sqls.setup{}
   require'lspconfig'.jedi_language_server.setup{}
   require'lspconfig'.clangd.setup{}
   require'lspconfig'.lua_ls.setup{}

   -- rust_analyzer
   require'lspconfig'.rust_analyzer.setup{
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                atttributes = {
                    enable = true
                }, 
                enable = true
            },
        }
    }
   }

   local signs = { Error = " ", Warn = " ", Hint = " ", Info = "󱖉 " }
   for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
   end
end

return M

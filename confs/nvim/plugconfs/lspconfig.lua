local M = {}
M.methods = {}


function M.setup()
   require'lspconfig'.gopls.setup{}
   require'lspconfig'.tsserver.setup{}
   require'lspconfig'.jsonls.setup{}
   require'lspconfig'.rust_analyzer.setup{}
   require'lspconfig'.pylsp.setup{}
   require'lspconfig'.sqls.setup{}
   require'lspconfig'.jedi_language_server.setup{}
   require'lspconfig'.clangd.setup{}

   local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
   for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
   end
end

return M

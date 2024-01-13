local M = {}
M.methods = {}


function M.setup()
   require("mason-lspconfig").setup{
      ensure_installed = { "rust_analyzer", "gopls" },
   }
end

return M

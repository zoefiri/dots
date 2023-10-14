local M = {}
M.methods = {}


function M.setup()
   require("nvim-lsp-installer").setup {}
end

return M

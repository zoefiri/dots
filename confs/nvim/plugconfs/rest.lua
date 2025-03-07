local M = {}
M.methods = {}


function M.setup()
   require("rest-nvim").setup({
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Highlight request on run
      highlight = {
         timeout = 150,
      },
      -- Jump to request line on run
      env_file = '.env',
      custom_dynamic_variables = {},
   });
end


return M

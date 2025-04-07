-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/neovim/nvim-lspconfig
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   "neovim/nvim-lspconfig",
   config = function()
      local lspconfig = require('lspconfig')
      lspconfig.rust_analyzer.setup {
         -- Server-specific settings. See `:help lspconfig-setup`
         settings = {
            ['rust-analyzer'] = {},
         },
      }

      require'lspconfig'.gopls.setup{}
      require'lspconfig'.jsonls.setup{}

      require'lspconfig'.sqls.setup{
         cmd = {"/Users/zoechamlee/.local/share/nvim/mason/bin/sqls", "-config", "~/.config/sqls/config.yaml"};
      }

      vim.diagnostic.config({
         signs = {
            text = {
               [vim.diagnostic.severity.ERROR] = '󰱮', -- or other icon of your choice here, this is just what my config has:
               [vim.diagnostic.severity.WARN] = '',
               [vim.diagnostic.severity.INFO] = '󱐎',
               [vim.diagnostic.severity.HINT] = '󰤔',
            },
         },
      })
   end
}

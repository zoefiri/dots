-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvimdev/lspsaga.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   'nvimdev/lspsaga.nvim',
   config = function()
      require('lspsaga').setup({
         -- finder = {
         --    max_height = 0.6,
         --    left_width = 0.3,
         --    default='ref+imp',
         --    layout='normal',
         -- },
         ui = {
            border = "single",
         },
      })
   end,
   dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
   }
}

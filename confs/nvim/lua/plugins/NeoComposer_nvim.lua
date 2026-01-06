-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/ecthelionvi/NeoComposer.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "ecthelionvi/NeoComposer.nvim",
  enabled=false,
  dependencies = { "kkharji/sqlite.lua" },
  opts = {},
  config = function()
     require('telescope').load_extension('macros')
  end
}

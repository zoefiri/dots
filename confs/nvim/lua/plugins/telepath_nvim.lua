-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/rasulomaroff/telepath.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  'rasulomaroff/telepath.nvim',
  enabled=false,
  dependencies = 'ggandor/leap.nvim',
  -- there's no sence in using lazy loading since telepath won't load the main module
  -- until you actually use mappings
  lazy = false,
  config = function()
    require('telepath').use_default_mappings()
  end
}

-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/NTBBloodbath/galaxyline.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "NTBBloodbath/galaxyline.nvim",
  enabled=false,
  -- your statusline
  config = function()
    require("galaxyline.themes.eviline")
  end
}

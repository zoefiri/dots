-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/edluffy/hologram.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "edluffy/hologram.nvim",
  config = function()
     require('hologram').setup{
        auto_display = true -- WIP automatic markdown image display, may be prone to breaking
     }
  end
}

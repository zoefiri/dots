-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/catgoose/nvim-colorizer.lua
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "catgoose/nvim-colorizer.lua",
  config = function()
     require('colorizer').setup()
  end
}

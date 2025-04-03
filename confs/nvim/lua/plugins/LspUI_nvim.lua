-- No example configuration was found for this plugin.
--  
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/jinzhongjia/LspUI.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "jinzhongjia/LspUI.nvim",
  enabled=false,
  branch = "main",
  config = function()
    require("LspUI").setup({
	  -- config options go here
	  })
  end
}

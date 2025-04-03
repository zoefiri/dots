-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/ysmb-wtsg/in-and-out.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   "ysmb-wtsg/in-and-out.nvim",
   keys = {
      {
         "<C-CR>",
         function()
            require("in-and-out").in_and_out()
         end,
         mode = "i"
      },
   },
}

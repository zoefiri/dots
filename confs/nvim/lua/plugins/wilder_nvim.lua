-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/gelguy/wilder.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "gelguy/wilder.nvim",
  enabled=false,
  config = function()
     local wilder = require('wilder')

     wilder.setup({modes = {':', '/', '?'}})

     wilder.set_option('renderer', wilder.popupmenu_renderer(
     wilder.popupmenu_border_theme({
        highlights = {
           border = 'Normal', -- highlight to use for the border
        },
        -- 'single', 'double', 'rounded' or 'solid'
        -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        border = 'rounded',
     })
     ))
  end
}

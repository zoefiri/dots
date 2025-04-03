-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/Bekaboo/deadcolumn.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "Bekaboo/deadcolumn.nvim",
  config = function()
     local opts = {
        scope = 'line', ---@type string|fun(): integer
        ---@type string[]|boolean|fun(mode: string): boolean
        modes = function(mode)
           return mode:find('^[iRss\x13]') ~= nil
        end,
        blending = {
           threshold = 0.5,
           colorcode = '#000000',
           hlgroup = { 'Normal', 'bg' },
        },
        warning = {
           alpha = 0.4,
           offset = 0,
           colorcode = '#FF0000',
           hlgroup = { 'Error', 'bg' },
        },
        extra = {
           ---@type string?
           follow_tw = nil,
        },
     }

     require('deadcolumn').setup(opts) -- Call the setup function
  end
}

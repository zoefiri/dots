-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/DanilaMihailov/beacon.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   "DanilaMihailov/beacon.nvim",
   enabled=false,
   config = function()
      require('beacon').setup({
         enabled = true, --- (boolean | fun():boolean) check if enabled
         speed = 2, --- integer speed at wich animation goes
         width = 40, --- integer width of the beacon window
         winblend = 70, --- integer starting transparency of beacon window :h winblend
         fps = 60, --- integer how smooth the animation going to be
         min_jump = 5, --- integer what is considered a jump. Number of lines
         cursor_events = { 'CursorMoved' }, -- table<string> what events trigger check for cursor moves
         window_events = { 'WinEnter', 'FocusGained' }, -- table<string> what events trigger cursor highlight
         highlight = { bg = 'white', ctermbg = 1 }, -- vim.api.keyset.highlight table passed to vim.api.nvim_set_hl
      })
   end
}

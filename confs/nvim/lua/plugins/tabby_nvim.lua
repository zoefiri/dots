-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nanozuki/tabby.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  'nanozuki/tabby.nvim',
  -- event = 'VimEnter', -- if you want lazy load, see below
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
     local theme_active = {
        fill = 'Normal',
        symbol = 'TabbySymbolActive',
        current_tab = 'TabbyActive',
        head = 'TabbyHeadActive',
        end_sec = 'TabbyEndSecActive',
        tail = 'TabbyEndActive',
        tab = 'TabbyActive',
        win = 'TabbyEndActive',
     }
     local theme_inactive = {
        fill = 'Normal',
        current_tab = 'TabbyInactive',
        symbol = 'TabbySymbolInactive',
        head = 'TabbyHeadInactive',
        end_sec = 'TabbyEndSecInactive',
        tail = 'TabbyEndInactive',
        tab = 'TabbyInactive',
        win = 'TabbyEndInactive',
     }
     local theme = theme_active
     require('tabby').setup({
        line = function(line)
           return {
              {
                 { ' 󱝁 ', hl = "TabbyHeaderSymbol" },
                 {'', hl = "TabbyHeaderSymbol" },
                 {' ', hl = "TabbyHeaderEnd" },
              },
              line.tabs().foreach(function(tab)
                 local theme = tab.is_current() and theme_active or theme_inactive
                 local hl = theme.tab

                 local name = tab.name()
                 if name == "[No Name]" then
                  name = "󰩷"
                 end

                 return {
                    {'', hl = theme.head },
                    {tab.is_current() and '' or '󰉆', hl = theme.symbol},
                    {' ', hl = theme.tab },
                    tab.number(),
                    {' ', hl = theme.tab },
                    name,
                    {' ', hl = theme.tab },
                    {'', hl = theme.end_sec },
                    {' ', hl = theme.tail },
                    hl = hl,
                 }
              end),
              line.spacer(),
              -- line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
              --    return {
              --       line.sep('', theme.win, theme.fill),
              --       win.is_current() and '' or '',
              --       win.buf_name(),
              --       line.sep('', theme.win, theme.fill),
              --       hl = theme.win,
              --       margin = ' ',
              --    }
              -- end),
              -- {
              --    line.sep('', theme.tail, theme.fill),
              --    { '  ', hl = theme.tail },
              -- },
              hl = 'Invis',
           }
        end,
        -- option = {}, -- setup modules' option,
     })
  end
  }

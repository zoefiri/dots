local M = {}
M.methods = {}


function M.setup()
   local custom_theme = require'lualine.themes.auto'

   custom_theme.normal.a.bg = 60
   custom_theme.normal.a.fg = 0
   custom_theme.normal.b.bg = 64
   custom_theme.normal.b.fg = 61
   custom_theme.normal.c.bg = 63
   custom_theme.normal.c.fg = 61

   custom_theme.insert.a.bg = 62
   custom_theme.insert.a.fg = 0
   custom_theme.insert.b.bg = 61
   custom_theme.insert.b.fg = 0
   custom_theme.insert.c.bg = 60
   custom_theme.insert.c.fg = 61

   custom_theme.command.a.bg = 2
   custom_theme.command.a.fg = 0
   custom_theme.command.b.bg = 4
   custom_theme.command.b.fg = 63
   custom_theme.command.c.bg = 63
   custom_theme.command.c.fg = 61

   custom_theme.visual.a.bg = 3
   custom_theme.visual.a.fg = 63
   custom_theme.visual.b.bg = 2
   custom_theme.visual.b.fg = 63
   custom_theme.visual.c.bg = 60
   custom_theme.visual.c.fg = 0

   require('lualine').setup {
      options = {
         icons_enabled = true,
         theme = custom_theme,
         component_separators = { left = '', right = ''},
         section_separators = { left = '', right = ' '},
         disabled_filetypes = {},
         always_divide_middle = true,
      },
      sections = {
         lualine_a = {'mode'},
         lualine_b = {'branch', 'diff', 'diagnostics'},
         lualine_c = {
            {
               'filename',
               file_status = true,      -- Displays file status (readonly status, modified status)
               path = 0,                -- 0: Just the filename
               -- 1: Relative path
               -- 2: Absolute path

               shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
               -- for other components. (terrible name, any suggestions?)
               symbols = {
                  modified = '',      -- Text to show when the file is modified.
                  readonly = '',      -- Text to show when the file is non-modifiable or readonly.
                  unnamed = '', -- Text to show for unnamed buffers.
               }
            }
         },
         lualine_x = {'encoding', 'fileformat', 'filetype'},
         lualine_y = {'progress'},
         lualine_z = {'location'}
      },
      inactive_sections = {
         lualine_a = {},
         lualine_b = {},
         lualine_c = {'filename'},
         lualine_x = {'location'},
         lualine_y = {},
         lualine_z = {}
      },
      tabline = {},
      extensions = {}

   }
end

return M

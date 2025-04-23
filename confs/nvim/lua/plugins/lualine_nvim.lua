local mothdust = require("colors/mothdust")

-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-lualine/lualine.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
       local c0 = mothdust.colors.c0.gui
       local c1 = mothdust.colors.c1.gui
       local c2 = mothdust.colors.c2.gui
       local c3 = mothdust.colors.c3.gui
       local c4 = mothdust.colors.c4.gui
       local c5 = mothdust.colors.c5.gui
       local c6 = mothdust.colors.c6.gui
       local c7 = mothdust.colors.c7.gui
       local c8 = mothdust.colors.c8.gui
       local c9 = mothdust.colors.c9.gui
       local cA = mothdust.colors.cA.gui
       local cB = mothdust.colors.cB.gui
       local cC = mothdust.colors.cC.gui
       local cD = mothdust.colors.cD.gui
       local cE = mothdust.colors.cE.gui
       local cF = mothdust.colors.cF.gui

       local theme = {
          normal = {
             a = { fg = c0, bg = cE },
             b = { fg = c4, bg = c3 },
             c = { fg = c0, bg = "None" },
             z = { fg = c7, bg = c9 },
          },
          insert = { a = { fg = c0, bg = cB } },
          visual = { a = { fg = c0, bg = cA } },
          replace = { a = { fg = c0, bg = c9 } },
       }

       local empty = require('lualine.component'):extend()
       function empty:draw(default_highlight)
          self.status = ''
          self.applied_separator = ''
          self:apply_highlights(default_highlight)
          self:apply_section_separators()
          return self.status
       end

       -- Put proper separators and gaps between components in sections
       local function process_sections(sections)
          for name, section in pairs(sections) do
             local left = name:sub(9, 10) < 'x'
             for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
                table.insert(section, pos * 2, { empty, color = { fg = c4, bg = c0 } })
             end
             for id, comp in ipairs(section) do
                if type(comp) ~= 'table' then
                   comp = { comp }
                   section[id] = comp
                end
                comp.separator = left and { right = '' } or { left = '' }
             end
          end
          return sections
       end

       local function search_result()
          if vim.v.hlsearch == 0 then
             return ''
          end
          local last_search = vim.fn.getreg('/')
          if not last_search or last_search == '' then
             return ''
          end
          local searchcount = vim.fn.searchcount { maxcount = 9999 }
          return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
       end

       local function modified()
          if vim.bo.modified then
             return '+'
          elseif vim.bo.modifiable == false or vim.bo.readonly == true then
             return '-'
          end
          return ''
       end

       local function mothicon()
          return '󰫢' --
       end

       require('lualine').setup {
          options = {
             theme = theme,
          },
          sections = process_sections {
             lualine_a = {
                {
                  mothicon 
                },
                'mode',
             },
             lualine_b = {
                'branch',
                'diff',
                {
                   'diagnostics',
                   source = { 'nvim' },
                   sections = { 'error' },
                   diagnostics_color = { error = { bg = c8, fg = c0 } },
                },
                {
                   'diagnostics',
                   source = { 'nvim' },
                   sections = { 'warn' },
                   diagnostics_color = { warn = { bg = c9, fg = c0 } },
                },
                { 
                   'filename',
                   file_status = false,
                   path = 1,
                   color = { bg = c4, fg = c2 },
                },
                { modified, color = { bg = cA } },
                {
                   '%w',
                   cond = function()
                      return vim.wo.previewwindow
                   end,
                },
                {
                   '%r',
                   cond = function()
                      return vim.bo.readonly
                   end,
                },
                {
                   '%q',
                   cond = function()
                      return vim.bo.buftype == 'quickfix'
                   end,
                },
             },
             lualine_c = {
                {
                   require('NeoComposer.ui').status_recording,
                   color = { bg = "None", fg = c2 },
                },
             },
             lualine_x = {},
             lualine_y = { 
                {
                   search_result,
                   color = { bg = "None", fg = c2 },
                },
                'filetype' ,
             },
             lualine_z = { '%l:%c', '%p%%/%L' },
          },
          inactive_sections = {
             lualine_c = { '%f %y %m' },
             lualine_x = {},
          },
       }
    end
 }

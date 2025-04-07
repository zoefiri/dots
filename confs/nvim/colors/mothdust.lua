
local b16_colors = {
   no = { gui = 'None', cterm = 'None' },
   c0 = { gui = '#101413', cterm = 59 },
   c1 = { gui = '#1A2624', cterm = 60 },
   c2 = { gui = '#20392D', cterm = 61 },
   c3 = { gui = '#214D36', cterm = 62 },
   c4 = { gui = '#eff69c', cterm = 63 },
   c5 = { gui = '#FFF3CF', cterm = 64 },
   c6 = { gui = '#FFFDED', cterm = 65 },
   c7 = { gui = '#FFF3CF', cterm = 66 },
   c8 = { gui = '#FB2C0B', cterm = 1 },
   c9 = { gui = '#F97C39', cterm = 2 },
   cA = { gui = '#F0B41B', cterm = 3 },
   cB = { gui = '#70BC5F', cterm = 4 },
   cC = { gui = '#9DDAB6', cterm = 5 },
   cD = { gui = '#FF5900', cterm = 6 },
   cE = { gui = '#FBE200', cterm = 7 },
   cF = { gui = '#FB0D3C', cterm = 8 },
}

function b16(ids)
   local hi_obj = {}

   if ids.bg then
      hi_obj.ctermbg = b16_colors[ids.bg].cterm
      hi_obj.bg = b16_colors[ids.bg].gui
   end

   if ids.fg then
      hi_obj.ctermfg = b16_colors[ids.fg].cterm
      hi_obj.fg = b16_colors[ids.fg].gui
   end

   return hi_obj
end

require('mini.base16').setup({
   -- Table with names from `base00` to `base0F` and values being strings of
   -- HEX colors with format "#RRGGBB". NOTE: this should be explicitly
   -- supplied in `setup()`.
   palette = {
      base00 = '#101413',
      base01 = '#1A2624',
      base02 = '#20392D',
      base03 = '#214D36',
      base04 = '#eff69c',
      base05 = '#FFF3CF',
      base06 = '#FFFDED',
      base07 = '#FFF3CF',
      base08 = '#FB2C0B',
      base09 = '#F97C39',
      base0A = '#F0B41B',
      base0B = '#70BC5F',
      base0C = '#9DDAB6',
      base0D = '#FF5900',
      base0E = '#FBE200',
      base0F = '#FB0D3C',
   },

   use_cterm = {
      base00 = 59,
      base01 = 60,
      base02 = 61,
      base03 = 62,
      base04 = 63,
      base05 = 64,
      base06 = 65,
      base07 = 66,
      base08 = 1,
      base09 = 3,
      base0A = 2,
      base0B = 4,
      base0C = 5,
      base0D = 6,
      base0E = 7,
      base0F = 8,
   },
})

vim.g.colors_name = "mothdust"

vim.api.nvim_set_hl(0, 'Normal', { ctermbg = nil })

vim.api.nvim_set_hl(0, 'c0', { ctermfg = 59 })
vim.api.nvim_set_hl(0, 'c1', { ctermfg = 60 })
vim.api.nvim_set_hl(0, 'c2', { ctermfg = 61 })
vim.api.nvim_set_hl(0, 'c3', { ctermfg = 62 })
vim.api.nvim_set_hl(0, 'c4', { ctermfg = 63 })
vim.api.nvim_set_hl(0, 'c5', { ctermfg = 64 })
vim.api.nvim_set_hl(0, 'c6', { ctermfg = 65 })
vim.api.nvim_set_hl(0, 'c7', { ctermfg = 66 })
vim.api.nvim_set_hl(0, 'c8', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'c9', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'cA', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cB', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'cC', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cD', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'cE', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'cF', { ctermfg = 8 })

vim.api.nvim_set_hl(0, 'Invis', b16({fg = "c0", bg = "no"}))

vim.api.nvim_set_hl(0, 'TabLineFill', b16({bg = "no", fg = "no" }))

vim.api.nvim_set_hl(0, 'TabbyActive', b16({fg = "c4", bg = "cF"}))
vim.api.nvim_set_hl(0, 'TabbySymbolActive', b16({fg = "cE", bg = "cF"}))
vim.api.nvim_set_hl(0, 'TabbyHeadActive', b16({fg = "cF", bg = "no"}))
vim.api.nvim_set_hl(0, 'TabbyEndSecActive', b16({fg = "c4", bg = "cF"}))
vim.api.nvim_set_hl(0, 'TabbyEndActive', b16({fg = "c4", bg = "no"}))

vim.api.nvim_set_hl(0, 'TabbyHeaderSymbol', b16({fg = "cE", bg = "c3"}))
vim.api.nvim_set_hl(0, 'TabbyHeaderEnd', b16({fg = "cE", bg = "no"}))

vim.api.nvim_set_hl(0, 'TabbyInactive', b16({fg = "cA", bg = "c2"}))
vim.api.nvim_set_hl(0, 'TabbySymbolInactive', b16({fg = "cE", bg = "c2"}))
vim.api.nvim_set_hl(0, 'TabbyHeadInactive', b16({fg = "c2", bg = "no"}))
vim.api.nvim_set_hl(0, 'TabbyEndSecInactive', b16({fg = "c4", bg = "c2"}))
vim.api.nvim_set_hl(0, 'TabbyEndInactive', b16({fg = "c4", bg = "no"}))

vim.api.nvim_set_hl(0, 'CursorLine', b16({bg = "c1"}))
vim.api.nvim_set_hl(0, 'CursorColumn', b16({bg = "c1"}))

vim.api.nvim_set_hl(0, 'LineNr', b16({fg = "cF"}))
vim.api.nvim_set_hl(0, 'CursorLineNr', b16({fg = "cE", bg = "no"}))
vim.api.nvim_set_hl(0, 'SignColumn', b16({fg = "c9", bg = "no"}))
vim.api.nvim_set_hl(0, 'EndOfBuffer', b16({bg = "no", fg = "no" }))

vim.api.nvim_set_hl(0, 'Structure', b16({fg = "cC" }))
vim.api.nvim_set_hl(0, 'Type', b16({fg = "c9" }))
vim.api.nvim_set_hl(0, 'Function', b16({fg = "cD" }))

vim.api.nvim_set_hl(0, 'Search', b16({bg = "c4", fg = "c0" }))
vim.api.nvim_set_hl(0, 'IncSearch', b16({bg = "cA" }))

vim.api.nvim_set_hl(0, 'BeaconFlash', b16({bg = "c8" }))
vim.api.nvim_set_hl(0, 'BeaconFlashBg', b16({bg = "c9" }))
vim.api.nvim_set_hl(0, 'YankPulse', b16({bg = "cE", fg = "c0" }))
vim.api.nvim_set_hl(0, 'DelPulse', b16({bg = "c8" }))
vim.api.nvim_set_hl(0, 'PutPulse', b16({bg = "c9" }))
vim.api.nvim_set_hl(0, 'UndoPulse', b16({bg = "cF" }))
vim.api.nvim_set_hl(0, 'RedoPulse', b16({bg = "cB" }))
vim.api.nvim_set_hl(0, 'SearchPulse', b16({bg = "cE", fg = "c0" }))

vim.api.nvim_set_hl(0, 'FloatBorder', b16({bg = "c0", fg = "cE" }))
vim.api.nvim_set_hl(0, 'NormalFloat', b16({bg = "no", fg = "no" }))

vim.api.nvim_set_hl(0, 'Pmenu', b16({bg = "no", fg = "no" }))
vim.api.nvim_set_hl(0, 'PmenuSel', b16({bg = "cE", fg = "c3" }))

vim.api.nvim_set_hl(0, 'SagaFolder', b16({bg = "c1", fg = "cE" }))
vim.api.nvim_set_hl(0, 'SagaFolderName', b16({bg = "c1", fg = "c6" }))
vim.api.nvim_set_hl(0, 'SagaFileName', b16({bg = "c1", fg = "c4" }))
vim.api.nvim_set_hl(0, 'WinBar', b16({bg = "c1", fg = "no" }))
vim.api.nvim_set_hl(0, 'WinBarNC', b16({bg = "c1", fg = "no" }))

vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarn', b16({bg = "no", fg = "cA" }))
vim.api.nvim_set_hl(0, 'DiagnosticFloatingHint', b16({bg = "no", fg = "cB" }))
vim.cmd("hi DiagnosticUnderlineHint guisp = '" .. b16_colors.cE.gui .. "'")


-- BlinkCmpKindTypeParameter
-- BlinkCmpKindConstructor
-- BlinkCmpKindEnumMember
-- BlinkCmpKindReference
-- BlinkCmpKindInterface
-- BlinkCmpKindVariable
-- BlinkCmpKindProperty
-- BlinkCmpKindOperator
-- BlinkCmpKindFunction
-- BlinkCmpKindConstant
-- BlinkCmpKindSnippet
-- BlinkCmpKindKeyword
-- BlinkCmpKindStruct
-- BlinkCmpKindModule
-- BlinkCmpKindMethod
-- BlinkCmpKindFolder
-- BlinkCmpKindValue
-- BlinkCmpKindField
-- BlinkCmpKindEvent
-- BlinkCmpKindColor
-- BlinkCmpKindClass
-- BlinkCmpKindUnit
-- BlinkCmpKindText
-- BlinkCmpKindFile
-- BlinkCmpKindEnum
-- BlinkCmpKind

return {
   b16 = b16,
   colors = b16_colors,
}

vim.g.mapleader = " "
package.path = package.path .. ";/home/zoe/.config/nvim/?.lua"
package.path = package.path .. ";/home/zoe/.config/nvim/highlights/?.lua"
package.path = package.path .. ";/home/zoe/.config/nvim/plugconfs/?.lua"
local options = {
   "set notermguicolors",
   "set undofile",
   "set clipboard=unnamedplus",
   "set cpoptions-=C",
   "set nocompatible",
   "set noshowmode",
   "set breakindent",
   "set ts=3",
   "set sw=3 et ",
   "filetype plugin on",
   "syntax on",
   -- "set fillchars=fold: ,vert:│,eob: ,msgsep:‾"
}
for _, option in ipairs(options) do 
   vim.api.nvim_command(option)
end

packer = require("packer")
plugins = require("plugins")

packer.startup(function(use)
   for _, plugin in ipairs(plugins) do
      use(plugin)
   end
end)


-- vim.g.dashboard_custom_section = {
--    a = {
--       description = { "  Find File          " },
--       command = "Telescope find_files",
--    },
--    b = {
--       description = { "  New File           " },
--       command = ":ene!",
--    },
--    c = {
--       description = { "  Recent Projects    " },
--       command = "Telescope projects",
--    },
--    d = {
--       description = { "  Recently Used Files" },
--       command = "Telescope oldfiles",
--    },
-- }
-- vim.g.dashboard_custom_footer = {"to the stars!!!1!"}
-- vim.g.dashboard_default_executive = "telescope"
-- vim.g.dashboard_executive = "telescope"
-- vim.g.dashboard_preview_command = 'chafa -c 256 --fg-only --symbols braille'
-- vim.g.dashboard_preview_file = '~/.config/nvim/LAINHADN3.gif'
-- vim.g.dashboard_preview_file_height = 23
-- vim.g.dashboard_preview_file_width = 28



local border = {
   {"╭", "FloatBorder"},
   {"─", "FloatBorder"},
   {"╮", "FloatBorder"},
   {"│", "FloatBorder"},
   {"╯", "FloatBorder"},
   {"─", "FloatBorder"},
   {"╰", "FloatBorder"},
   {"│", "FloatBorder"},
}
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, border_opt)
   border_opt = {}
   border_opt.border = border
   return orig_util_open_floating_preview(contents, syntax, border_opt)
end


--require'lspconfig'.rust_analyzer.setup({})

vim.cmd([[
augroup MyColors
autocmd!
autocmd BufWinEnter * highlight WLifg_ibg cterm=bold
   \ | highlight WLsfg_sbg cterm=bold
   \ | set showtabline=2
augroup END
]])

require("highlights.generic")
require("binds")

vim.api.nvim_create_autocmd({"ColorScheme"}, {
   callback = function(ev)
      vim.api.nvim_command("highlight! WLifg_ibg cterm=bold")
      vim.api.nvim_command("highlight! WLsfg_sbg cterm=bold")
   end
})

require('leap').add_default_mappings() 

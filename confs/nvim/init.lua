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

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
     -- import/override with your plugins
    { import = "plugins" },   -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})


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

vim.api.nvim_command('set clipboard+=unnamedplus')

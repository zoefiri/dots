-- vim options
vim.g.mapleader = " "
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.luarocks/share/lua/5.4/?.lua"
-- package.path = package.path .. ";/home/zoe/.config/nvim/highlights/?.lua"
-- package.path = package.path .. ";/home/zoe/.config/nvim/plugconfs/?.lua"
local options = {
   -- "set notermguicolors",
   "set undofile",
   "set clipboard=unnamedplus",
   "set cpoptions-=C",
   "set nocompatible",
   "set noshowmode",
   "set breakindent",
   "set cursorline",
   "set cursorcolumn",
   "set number",
   "set showtabline=2",
   "set winborder=single",
   "set ts=3",
   "set sw=3 et ",
   "set fillchars+=eob:\\ ",
   "filetype plugin on",
   "syntax on",
   -- "set fillchars=fold: ,vert:│,eob: ,msgsep:‾"
}
for _, option in ipairs(options) do 
   vim.api.nvim_command(option)
end

-- lazy bootstrapping
require("config.lazy")

-- local border = {
--    {"╭", "FloatBorder"},
--    {"─", "FloatBorder"},
--    {"╮", "FloatBorder"},
--    {"│", "FloatBorder"},
--    {"╯", "FloatBorder"},
--    {"─", "FloatBorder"},
--    {"╰", "FloatBorder"},
--    {"│", "FloatBorder"},
-- }
-- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
-- function vim.lsp.util.open_floating_preview(contents, syntax, border_opt)
--    border_opt = {}
--    border_opt.border = border
--    return orig_util_open_floating_preview(contents, syntax, border_opt)
-- end
--
--
-- --require'lspconfig'.rust_analyzer.setup({})
--
-- vim.cmd([[
-- augroup MyColors
-- autocmd!
-- autocmd BufWinEnter * highlight WLifg_ibg cterm=bold
--    \ | highlight WLsfg_sbg cterm=bold
--    \ | set showtabline=2
-- augroup END
-- ]])
--
-- require("highlights.generic")
require("binds")
--
-- vim.api.nvim_create_autocmd({"ColorScheme"}, {
--    callback = function(ev)
--       vim.api.nvim_command("highlight! WLifg_ibg cterm=bold")
--       vim.api.nvim_command("highlight! WLsfg_sbg cterm=bold")
--    end
-- })
--
--

vim.api.nvim_command('colorscheme mothdust')


-- local config = vim.api.nvim_win_get_config(win)
-- -- Border can be none, single, double, rounded, solid, shadow.
-- -- https://neovim.io/doc/user/api.html#nvim_open_win()
-- config.border = "shadow"
-- vim.api.nvim_win_set_config(win, config)

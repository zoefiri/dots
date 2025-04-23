-- vim options
vim.g.mapleader = " "
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.luarocks/share/lua/5.4/?.lua"
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
require("binds")

vim.api.nvim_command('colorscheme mothdust')

vim.api.nvim_command('TSEnable highlight incremental_selection indent')

vim.cmd[[
augroup PrintEvents
    autocmd!
    autocmd FocusGained * nested call system('echo FocusGained  '. &filetype .' >> ~/vimevents.log')
    autocmd FocusLost * nested call system('echo FocusLost  '. &filetype .' >> ~/vimevents.log')
augroup END
]]

if vim.g.neovide then
   vim.o.guifont = "MonaspiceNe Nerd Font:h11,b"
end

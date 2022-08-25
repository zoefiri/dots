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
   "colorscheme pabloc",
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


vim.g.dashboard_custom_section = {
   a = {
      description = { "  Find File          " },
      command = "Telescope find_files",
   },
   b = {
      description = { "  New File           " },
      command = ":ene!",
   },
   c = {
      description = { "  Recent Projects    " },
      command = "Telescope projects",
   },
   d = {
      description = { "  Recently Used Files" },
      command = "Telescope oldfiles",
   },
}
vim.g.dashboard_custom_footer = {"to the stars!!!1!"}
vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_executive = "telescope"
vim.g.dashboard_preview_command = 'chafa -c 256 --fg-only --symbols braille'
vim.g.dashboard_preview_file = '~/.config/nvim/LAINHADN3.gif'
vim.g.dashboard_preview_file_height = 23
vim.g.dashboard_preview_file_width = 28



local lsp_installer = require("nvim-lsp-installer")
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

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
for k, v in pairs(lsp_installer.get_installed_servers()) do 
   local avail, serv = lsp_installer.get_server(v.name)

   local opts = {}
   opts.border = border
   --opts.filetypes = { "rust", "rs", "Rust" }

   serv:setup(opts)
   require'nvim-treesitter.configs'.setup {
      -- Install parsers synchronously (only applied to `ensure_installed`)
      ensure_installed = {"c", "rust"},
      sync_install = false,

      highlight = {
         -- `false` will disable the whole extension
         enable = true,

         -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
         -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
         -- Using this option may slow down your editor, and you may see some duplicate highlights.
         -- Instead of true it can also be a list of languages
         additional_vim_regex_highlighting = true,
      },
   }
end

require'lspconfig'.rust_analyzer.setup({})


require("highlights.generic")
require("binds")

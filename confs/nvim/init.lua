package.path = package.path .. ";/home/zoe/.config/nvim/?.lua"
package.path = package.path .. ";/home/zoe/.config/nvim/highlights/?.lua"
package.path = package.path .. ";/home/zoe/.config/nvim/plugconfs/?.lua"
local options = {
   "set notermguicolors",
   "set clipboard=unnamedplus",
   "set cpoptions-=C",
   "set nocompatible",
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

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
   local opts = {}

   -- (optional) Customize the options passed to the server
   -- if server.name == "tsserver" then
   --     opts.root_dir = function() ... end
   -- end

   -- This setup() function will take the provided server configuration and decorate it with the necessary properties
   -- before passing it onwards to lspconfig.
   -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
   server:setup(opts)

require'nvim-treesitter.configs'.setup {
   -- One of "all", "maintained" (parsers with maintainers), or a list of languages
   ensure_installed = "maintained",

   -- Install languages synchronously (only applied to `ensure_installed`)
   sync_install = false,

   -- List of parsers to ignore installing
   ignore_install = { "javascript" },

   highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- list of language that will be disabled

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = true,
   },
}
   -- vim.api.nvim_command("TSUpdate") -- move this to after plugin initialization later on...
end)

require("highlights.generic")

-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-treesitter/nvim-treesitter
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   event = "BufReadPre",
   config = function()
      require("nvim-treesitter.configs").setup({
         ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash", "tmux" },
         auto_install = true,
         highlight = { enable = true },
         indent = { enable = true },
         incremental_selection = {
            enable = true,
            keymaps = {
               init_selection = "<C-space>",
               node_incremental = "<C-space>",
               scope_incremental = false,
               node_decremental = "<bs>",
            },
         },
      })
   end
}

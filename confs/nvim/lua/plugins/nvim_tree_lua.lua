-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-tree/nvim-tree.lua
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "nvim-tree/nvim-tree.lua",
  config = function()
     require("nvim-tree").setup({
        sort = {
           sorter = "case_sensitive",
        },
        view = {
           width = 30,
        },
        renderer = {
           group_empty = true,
        },
        filters = {
           dotfiles = true,
        },
     })
  end
}

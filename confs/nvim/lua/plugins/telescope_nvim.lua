-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvim-telescope/telescope.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
   'nvim-telescope/telescope.nvim',
   dependencies = {
      'nvim-lua/plenary.nvim',
      "Myzel394/jsonfly.nvim",
   },
   config = function()
      require('telescope').setup{
         defaults = {
            border = false,
            -- Default configuration for telescope goes here:
            -- config_key = value,
            mappings = {
               i = {
                  -- map actions.which_key to <C-h> (default: <C-/>)
                  -- actions.which_key shows the mappings for your picker,
                  -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                  ["<C-h>"] = "which_key"
               }
            }
         },
         pickers = {
            -- Default configuration for builtin pickers goes here:
            -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this
            -- builtin picker
         },
         extensions = {
            jsonfly = {
               layout_strategy = "horizontal",
               prompt_position = "top",
               layout_config = {
                  mirror = false,
                  prompt_position = "top",
                  preview_width = 0.45
               }
            }
         }
      }

      require("telescope").load_extension("jsonfly")
   end
}

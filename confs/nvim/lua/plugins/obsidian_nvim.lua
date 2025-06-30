return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
       {
          name = 'mothjar',
          path = '~/mothjar',
       }
    },

    wiki_link_func = "use_path_only",

    -- -- see below for full list of options 👇
    -- -- Optional, customize how note file names are generated given the ID, target directory, and title.
    -- ---@param spec { id: string, dir: obsidian.Path, title: string|? }
    -- ---@return string|obsidian.Path The full path to the new note.
    -- note_path_func = function(spec)
    --    local o = require('obsidian')
    --
    --    local vault = o.get_client().dir
    --
    --    -- This is equivalent to the default behavior.
    --
    --    local new_path = o.Path.buf_dir(0):joinpath(spec.dir:relative_to(vault)) / tostring(spec.id)
    --
    --    while true do 
    --
    --       break
    --    end
    --    -- print(new_path:with_suffix(".md"))
    --
    --    return new_path:with_suffix(".md")
    -- end,
 },
}

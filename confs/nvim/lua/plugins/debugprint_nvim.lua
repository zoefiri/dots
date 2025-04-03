-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/andrewferrier/debugprint.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
    "andrewferrier/debugprint.nvim",

    -- opts = { … },

    dependencies = {
        "echasnovski/mini.nvim" -- Needed for :ToggleCommentDebugPrints(NeoVim 0.9 only)
                                -- and line highlighting (optional)
    },

    lazy = false, -- Required to make line highlighting work before debugprint is first used
    version = "*", -- Remove if you DON'T want to use the stable version
}

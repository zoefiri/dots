-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/echasnovski/mini.base16
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "echasnovski/mini.base16",
  version = false,
  config = function()
     require('mini.base16').setup({
        -- Table with names from `base00` to `base0F` and values being strings of
        -- HEX colors with format "#RRGGBB". NOTE: this should be explicitly
        -- supplied in `setup()`.
        palette = {
           base00 = '#101413',
           base01 = '#1A2624',
           base02 = '#20392D',
           base03 = '#214D36',
           base04 = '#AEE28E',
           base05 = '#F4EC97',
           base06 = '#eff69c',
           base07 = '#FFF3CF',
           base08 = '#FB2C0B',
           base09 = '#F97B2E',
           base0A = '#F0B41B',
           base0B = '#70BC5F',
           base0C = '#9DDAB6',
           base0D = '#FF536A',
           base0E = '#ffc4ff',
           base0F = '#00a5c5',
        },

        -- Whether to support cterm colors. Can be boolean, `nil` (same as
        -- `false`), or table with cterm colors. See `setup()` documentation for
        -- more information.
        use_cterm = {
           base00 = 59,
           base01 = 60,
           base02 = 61,
           base03 = 62,
           base04 = 63,
           base05 = 64,
           base06 = 65,
           base07 = 66,
           base08 = 1,
           base09 = 2,
           base0A = 3,
           base0B = 4,
           base0C = 5,
           base0D = 6,
           base0E = 7,
           base0F = 8,
        },

        -- Plugin integrations. Use `default = false` to disable all integrations.
        -- Also can be set per plugin (see |MiniBase16.config|).
        plugins = { default = true },
     })
  end
}

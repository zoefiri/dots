return  {
   'mikesmithgh/borderline.nvim',
   enabled = false,
   lazy = true,
   event = 'VeryLazy',
   config = function()
      local bl_borders = require('borderline.borders')

      require('borderline').setup({
         border = bl_borders.heavy_single
      })
   end,
}

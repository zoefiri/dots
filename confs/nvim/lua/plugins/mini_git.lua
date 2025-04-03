-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/echasnovski/mini.git
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return { 
   'echasnovski/mini-git', version = false, main = 'mini.git' ,
   config = function() 
      require('mini.git').setup()
   end
}

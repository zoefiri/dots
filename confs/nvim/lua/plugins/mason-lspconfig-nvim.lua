return {
   "williamboman/mason-lspconfig.nvim",
   config = function()
      require("mason-lspconfig").setup()

      require("mason-lspconfig").setup_handlers {
         -- The first entry (without a key) will be the default handler
         -- and will be called for each installed server that doesn't have
         -- a dedicated handler.
         function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
         end,
         -- Next, you can provide a dedicated handler for specific servers.
         -- For example, a handler override for the `rust_analyzer`:
         ["sqls"] = function ()
            require("lspconfig").sqls.setup {
               on_new_config  = function(new_config, new_root_dir) 
                  new_config.cmd = { "/Users/zoechamlee/.local/share/nvim/mason/packages/sqls/sqls", "-config", "/Users/zoechamlee/.config/sqls/config.yaml" }
               end,
               on_attach = function(client,bufnr) 
                  require('sqls').on_attach(client,bufnr)
               end
            }
         end
      }
   end,
   dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
   }
}

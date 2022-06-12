return {
   -- Packer can manage itself as an optional plugin
   { "wbthomason/packer.nvim" },
   { "vimwiki/vimwiki" },
   { "mbbill/undotree" },
   { "metakirby5/codi.vim" },
   { "chrisbra/Colorizer" },
   {
      "ethanholz/nvim-lastplace",
      config = function()
         require'nvim-lastplace'.setup{}
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         require("plugconfs.lspconfig").setup()
      end,
   },
   { "tamago324/nlsp-settings.nvim" },
   {
      "jose-elias-alvarez/null-ls.nvim",
   },
   { "antoinemadec/FixCursorHold.nvim" }, -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
   {
      "williamboman/nvim-lsp-installer",
      config = function()
         require("plugconfs.lsp_installer").setup()
      end,
   },
   { "nvim-lua/popup.nvim" },
   { "nvim-lua/plenary.nvim" },
   -- macros
   {
      "tpope/vim-repeat",
   },
   {
      "svermeulen/vim-macrobatics",
   },
   -- Telescope
   {
      "nvim-telescope/telescope.nvim",
      config = function()
         require("plugconfs.telescope").setup()
      end,
   },
   {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
   },
   -- Install nvim-cmp, and buffer source as a dependency
   {
      "L3MON4D3/LuaSnip",
      config = function()
         require("luasnip/loaders/from_vscode").lazy_load()
      end,
   },
   {
      "hrsh7th/nvim-cmp",
      config = function()
         require("plugconfs.cmp").setup()
      end,
      branch = "dev",
      requires = {
         "L3MON4D3/LuaSnip",
         "rafamadriz/friendly-snippets",
         "onsails/lspkind-nvim",
      },
   },
   {
      "onsails/lspkind-nvim"
   },
   {
      "rafamadriz/friendly-snippets",
   },
   {
      "hrsh7th/cmp-nvim-lsp",
   },
   {
      "saadparwaiz1/cmp_luasnip",
   },
   {
      "hrsh7th/cmp-buffer",
   },
   {
      "hrsh7th/cmp-cmdline",
   },
   {
      "hrsh7th/cmp-path",
   },
   {
      "folke/lua-dev.nvim",
      module = "lua-dev",
   },
   {
      "Tastyep/structlog.nvim",
      config = function()
         require("plugconfs.lsp_installer").setup()
      end,
   },
   {
      "rcarriga/nvim-notify",
      config = function()
         require("plugconfs.nvim_notify").setup()
      end,
      event = "BufRead",
   },


   -- Autopairs
   {
      "windwp/nvim-autopairs",
      -- event = "InsertEnter",
      config = function()
         require("plugconfs.autopairs").setup()
      end,
   },

   -- Treesitter
   {
      "nvim-treesitter/nvim-treesitter",
      --disable = true,
      branch = vim.fn.has "nvim-0.6" == 1 and "master" or "0.5-compat",
      -- run = ":TSUpdate",
      config = function()
         require("plugconfs.treesitter").setup()
      end,
   },
   {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "BufReadPost",
   },

   -- NvimTree
   {
      "kyazdani42/nvim-tree.lua",
      -- event = "BufWinOpen",
      -- cmd = "NvimTreeToggle",
      config = function()
         require("plugconfs.nvimtree").setup()
      end,
   },

   {
      "lewis6991/gitsigns.nvim",

      config = function()
         require("plugconfs.gitsigns").setup()
      end,
      event = "BufRead",
   },

   -- Whichkey
   {
      "folke/which-key.nvim",
      config = function()
         require("plugconfs.which-key-nvim").setup()
      end,
      event = "BufWinEnter",
   },

   -- Comments
   {
      "numToStr/Comment.nvim",
      event = "BufRead",
      config = function()
         require("plugconfs.comment").setup()
      end,
   },

   -- project.nvim
   {
      "ahmedkhalf/project.nvim",
      config = function()
         require("plugconfs.project").setup()
      end,
   },

   -- Icons
   { "kyazdani42/nvim-web-devicons" },

   -- Status Line and Bufferline
   -- {
   --   -- "hoob3rt/lualine.nvim",
   --   "nvim-lualine/lualine.nvim",
   --   -- "Lunarvim/lualine.nvim",
   --   config = function()
   --     require("plugconfs.lualine").setup()
   --   end,
   -- },
   {
      "kdheepak/tabline.nvim",
      disable = true,
      config = function()
         require("plugconfs.tabline_nvim").setup()
      end,
   },
   {
      "NTBBloodbath/galaxyline.nvim",
      disable = true,
      config = function()
         require("plugconfs.galaxyline_nvim").setup()
      end,
   },
   {
      "windwp/windline.nvim",
      config = function()
         require("plugconfs.windline_nvim").setup()
      end,
      requires = {
         "rcarriga/nvim-notify",
      },
   },

   {
      "akinsho/bufferline.nvim",
      config = function()
         require("plugconfs.bufferline").setup()
      end,
      event = "BufWinEnter",
   },

   -- REST client
   {
      "NTBBloodbath/rest.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
         require("plugconfs.rest").setup()
      end,
   },

   -- Debugging
   {
      "mfussenegger/nvim-dap",
      -- event = "BufWinEnter",
      config = function()
         require("plugconfs.dap").setup()
      end,
   },

   -- Debugger management
   {
      "Pocco81/DAPInstall.nvim",
      -- event = "BufWinEnter",
      -- event = "BufRead",
   },

   -- Dashboard
   {
      "glepnir/dashboard-nvim",
      event = "BufWinEnter",
      config = function()
         require("plugconfs.dashboard").setup()
      end,
   },

   -- Terminal
   {
      "akinsho/toggleterm.nvim",
      event = "BufWinEnter",
      config = function()
         require("plugconfs.terminal").setup()
      end,
   },

   -- SchemaStore
   {
      "b0o/schemastore.nvim",
   },
}

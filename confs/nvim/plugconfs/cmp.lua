local M = {}
M.methods = {}

function M.setup()
   local lspkind = require('lspkind')
   vim.api.nvim_command("set completeopt=menu,menuone,noselect")

   -- Setup nvim-cmp.
   local cmp = require'cmp'

   cmp.setup({
         snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
               vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
               -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
               -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
               -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            end,
         },
         mapping = {
            ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
            ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
            ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
            ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
            ['<C-e>'] = cmp.mapping({
               i = cmp.mapping.abort(),
               c = cmp.mapping.close(),
            }),
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
         },
         formatting = {
            format = lspkind.cmp_format({
               mode = 'symbol', -- show only symbol annotations
               maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
               before = function (entry, vim_item)
                  return vim_item
               end
            })
         },
         window = {
            completion = {
               border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            },
            documentation = {
               border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            }
         },
         sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' }, -- For luasnip users.
         }, {
            { name = 'buffer' },
         })
      })

      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
         sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
         }, {
            { name = 'buffer' },
         })
      })

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline('/', {
         sources = {
            { name = 'buffer' }
         }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
         sources = cmp.config.sources({
            { name = 'path' }
         }, {
            { name = 'cmdline' }
         })
      })

      -- Setup lspconfig.
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
         capabilities = capabilities
      }
      -- Use buffer source for `/`.
      cmp.setup.cmdline('/', {
         sources = {
            { name = 'buffer' }
         }
      })

      -- Use cmdline & path source for ':'.
      cmp.setup.cmdline(':', {
         sources = cmp.config.sources({
            { name = 'path' }
         }, {
            { name = 'cmdline' }
         })
      })
   end

   return M

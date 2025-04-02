local M = {}
M.methods = {}


function M.setup()
   require("noice").setup({
      lsp = {
         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
         override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
         },
      },
      -- you can enable a preset for easier configuration
      presets = {
         long_message_to_split = true, -- long messages will be sent to a split
         inc_rename = false, -- enables an input dialog for inc-rename.nvim
         lsp_doc_border = true, -- add a border to hover docs and signature help
      },
   })
end


return M

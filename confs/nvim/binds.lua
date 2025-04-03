local opts
local wk = require("which-key")



opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

wk.add({
   -- name = "+buff nav",
   {"<leader>o", "<cmd>tabprevious<CR>", desc = "buff ←" },
   {"<leader>p", "<cmd>tabnext<CR>", desc = "buff →" },
   {"<leader>m", "<C-I>", desc = "nav ←" },
   {"<leader>n", "<C-O>", desc = "nav →" },
   {"<leader>h", "<C-w>h", desc = "win ←" },
   {"<leader>j", "<C-w>j", desc = "win ↓" },
   {"<leader>k", "<C-w>k", desc = "win ↑" },
   {"<leader>l", "<C-w>l", desc = "win →" },

   -- buff management
   {"<leader>ac", "<cmd>tabnew<CR>", desc = "buff " },
   {"<leader>ae", "<cmd>tabclose<CR>", desc = "buff " },

   -- open plugins
   {"<leader>u", "<cmd>UndotreeToggle<CR>", desc = "toggle undotree" },
   {"<leader>t", "<cmd>NvimTreeToggle<CR>", desc = "toggle nvimtree" },
   {"<leader>e", "<cmd>ToggleTerm direction='float'<CR>", desc = "toggle term" },

   -- telescope 
   {"<leader>ff", "<cmd>Telescope find_files<CR>", desc = "find files" },
   {"<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "livegrep" },
   {"<leader>ft", "<cmd>Telescope file_browser<CR>", desc = "file browser" },

   -- neocomposer
   {"qp", "<cmd>lua require('NeoComposer.macro').play_macro()<CR>", desc = "play macro" },
   {"qy", "<cmd>lua require('NeoComposer.macro').yank_macro()<CR>", desc = "yank macro" },
   {"qs", "<cmd>lua require('NeoComposer.macro').stop_macro()<CR>", desc = "stop recording" },
   {"qq", "<cmd>lua require('NeoComposer.macro').toggle_record()<CR>", desc = "toggle recording" },
   {"qn", "<cmd>lua require('NeoComposer.macro').cycle_next()<CR>", desc = "cycle next" },
   {"qN", "<cmd>lua require('NeoComposer.macro').cycle_prev()<CR>", desc = "cycle prev" },
   {"qQ", "<cmd>lua require('NeoComposer.ui').toggle_macro_menu()<CR>", desc = "toggle menu" },

   -- lsp
   {"<leader>zD", "<cmd>Lspsaga goto_declaration()<CR>", desc = "view declaration" },
   {"<leader>zd", "<cmd>Lspsaga goto_definition<CR>", desc = "view definition" },
   {"<leader>zl", "<cmd>Lspsaga hover_doc<CR>", desc = "lsp hover" },
   {"<leader>zo", "<cmd>Lspsaga outline<CR>", desc = "lsp hover" },
   {"<leader>zf", "<cmd>Lspsaga finder<CR>", desc = "lsp hover" },
   {"<leader>zr", "<cmd>Lspsaga rename<CR>", desc = "rename" },
   {"<leader>ze", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "diagnostics floatwin" },
   {"<leader>zn", "<cmd>Lspsaga diagnostic_jump_prev()<CR>", desc = "diagnostics ←" },
   {"<leader>zN", "<cmd>Lspsaga diagnostic_jump_next()<CR>", desc = "diagnostics →" },
   {"<leader>zz", "<cmd>Lspsaga incoming_calls<CR>", desc = "lsp hover" },
   {"<leader>zx", "<cmd>Lspsaga outgoing_calls<CR>", desc = "lsp hover" },
   {"<leader>zF", "<cmd>lua vim.lsp.buf.format()<CR>", desc = "format buffer" },

   -- flash
   {"<leader>s", "<cmd>require('flash').jump()<CR>", desc = "format buffer" },
   {"<leader>d", "<cmd>require('flash').treesitter()<CR>", desc = "format buffer" },
   {"<leader>r", "<cmd>require('flash').remote()<CR>", desc = "format buffer" },

   -- mini.git
   {"<leader>gg", "<cmd>Git ", desc = "format buffer" },
   {"<leader>ga", "<cmd>Git commit<CR>", desc = "format buffer" },
   {"<leader>gc", "<cmd>Git add %<CR>", desc = "format buffer" },
})



-- wk.register({
--    q = {"<plug>(Mac_Play)", "play macro" },
--    gq = {"<plug>(Mac_RecordNew)", "record macro" },
-- })
--
-- vim.cmd('silent! call repeat#set("\\<Plug>MyWonderfulMap", v:count)')
--
-- function _G.set_terminal_keymaps()
--    local opts = {noremap = true}
--    vim.api.nvim_buf_set_keymap(0, 't', 'jj', [[<C-\><C-n>]], opts)
-- end
--
-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
--
-- vim.keymap.set({'n', 'x', 'o'}, '<some-key>', function()  end, {})

-- function map(mode, lhs, rhs, opts)
--     local options = { noremap = true }
--     if opts then
--         options = vim.tbl_extend("force", options, opts)
--     end
--     vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end
--
-- -- nav
--    map('n', '<space>o', '<cmd>bprev<CR>', opts)
--    map('n', '<space>p', '<cmd>bnext<CR>', opts)
--    map('n', '<space>ac', '<cmd>ene!<CR>', opts)
--    map('n', '<space>ae', '<cmd>bdelete<CR>', opts)
--
-- -- telescope
--    map('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts)
--
-- -- lsp
--    map('n', '<space>za', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--    -- buf_set_keymap('n', 'zD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--    -- buf_set_keymap('n', 'zd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--    -- buf_set_keymap('n', 'zl', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--    -- buf_set_keymap('n', 'zi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--    -- buf_set_keymap('n', 'zk', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--    buf_set_keymap('n', '<space>za', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--    buf_set_keymap('n', '<space>zr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--    buf_set_keymap('n', '<space>zl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--    -- buf_set_keymap('n', 'zt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--    -- buf_set_keymap('n', 'zr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--    -- buf_set_keymap('n', 'zc', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--    buf_set_keymap('n', 'zR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--    buf_set_keymap('n', 'ze', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--    -- buf_set_keymap('n', 'zn', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--    -- buf_set_keymap('n', 'zN', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--    -- buf_set_keymap('n', 'zq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--    buf_set_keymap('n', 'zF', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

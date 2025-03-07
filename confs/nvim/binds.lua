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

-- buffer nav
wk.register({
   name = "+buff nav",
   o = {"<cmd>tabprevious<CR>", "buff ←" },
   p = {"<cmd>tabnext<CR>", "buff →" },
   m = {"<C-I>", "nav ←" },
   n = {"<C-O>", "nav →" },
   h = {"<C-w>h", "win ←" },
   j = {"<C-w>j", "win ↓" },
   k = {"<C-w>k", "win ↑" },
   l = {"<C-w>l", "win →" },
   a = {
      name = "+buff mng",
      c = {"<cmd>tabnew<CR>", "buff " },
      e = {"<cmd>tabclose<CR>", "buff " },
   },
   w = { "<cmd>lua require'leap-ast'.leap()<CR>", "AST leap" },
}, { prefix = "<leader>" })

-- open plugin menus
wk.register({
   name = "+open plugin",
   u = {"<cmd>UndotreeToggle<CR>", "toggle undotree" },
   t = {"<cmd>NvimTreeToggle<CR>", "toggle nvimtree" },
   e = {"<cmd>ToggleTerm direction='float'<CR>", "toggle term" },
   r = {
      r = {"<cmd>lua require('rest-nvim').run()<CR>", "run REST request" },
      p = {"<cmd>lua require('rest-nvim').run(true)<CR>", "preview REST request"}
   },
   f = {
      name = "+telescope",
      f = {"<cmd>Telescope find_files<CR>", "find files" },
      g = {"<cmd>Telescope live_grep<CR>", "livegrep" },
      t = {"<cmd>Telescope file_browser<CR>", "file browser" },
   },
}, { prefix = "<leader>" })

-- plugin actions
wk.register({
   name = "+plugin actions",
   d = {"<cmd>lua require('notify').dismiss()<CR>", "dismiss notifs" },
}, { prefix = "<leader>" })

-- lsp stuff
wk.register({
   z = {
      name = "+nvimlsp",
      w = {
         name = "+workspace",
         a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "new workspace folder" },
         d = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspae folder" },
         l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders" },
      },
      D = {"<cmd>lua vim.lsp.buf.declaration()<CR>", "view declaration" },
      d = {"<cmd>lua vim.lsp.buf.definition()<CR>", "view definition" },
      l = {"<cmd>lua vim.lsp.buf.hover()<CR>", "lsp hover" },
      i = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "view implementation" },
      k = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", "signature help" },
      t = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "view type definition" },
      r = {"<cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
      c = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "code action" },
      R = {"<cmd>lua vim.lsp.buf.references()<CR>", "references" },
      e = {"<cmd>lua vim.diagnostic.open_float()<CR>", "diagnostics floatwin" },
      n = {"<cmd>lua vim.diagnostic.goto_prev()<CR>", "diagnostics ←" },
      N = {"<cmd>lua vim.diagnostic.goto_next()<CR>", "diagnostics →" },
      F = {"<cmd>lua vim.lsp.buf.format()<CR>", "" },
   },
}, { prefix = "<leader>" })

wk.register({
   q = {"<plug>(Mac_Play)", "play macro" },
   gq = {"<plug>(Mac_RecordNew)", "record macro" },
})

vim.cmd('silent! call repeat#set("\\<Plug>MyWonderfulMap", v:count)')

function _G.set_terminal_keymaps()
   local opts = {noremap = true}
   vim.api.nvim_buf_set_keymap(0, 't', 'jj', [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set({'n', 'x', 'o'}, '<some-key>', function()  end, {})

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

"   ###########################################################################
"   #                                                             ,,,,,,,,,,, #
"   #  nvim init.vim by zoefiri                                   ; —  ▭  ✖ ; #
"   #                                                             ''''''''''' #
"   ###########################################################################
"   #                                                                         #
"   #       ,####,      ###,                                                  #
"   #     ,##,  '#,     # '##,                                                #
"   #     #''#,  '#,    #   '#                                                #
"   #     #  '#,  '#,   #    #                                                #
"   #     #   '#,  '#,  #    #  ##,     ,#,    #######        ,####  ,##.     #
"   #     #    '#,  '#, #    #  ###,   ,###   ############,  ###### ######    #
"   #     #    #'#,  '#,#    #  ####   ####        ######## ,##' #### '###    #
"   #     #    # '#,  '##    #  '###, ,###'        ###      ###  ###   ###    #
"   #     #    #  '#,   #    #   ####,####       .###       ##' ,###  ###     #
"   #     #    #   '#,  #    #   '#######'   ########       ##  ###  ###      #
"   #     #,   #    '#, #   ,#    #######    '###########,  '#  ##'  '##      #
"   #     '#,  #     '#,#  ,#'     '###'          '#######                    #
"   #       '###      '#####'                                                 #
"   #                                                                         #
"   ###########################################################################

"  ,#############,
"  # options ⚙️   # {{{
"  '#############'
   set clipboard=unnamedplus
   set cpoptions-=C
   set nocompatible
   set ts=3
   set sw=3 et 
   "set completeopt=menu,menuone,noselect
   filetype plugin on
   syntax on
"}}}


call plug#begin()
"{{{ 
"  ,'##################################################################,
"#'                                                                    #
"# plugins 🔌   /######################################################\
",###############/                         / ⚙️  /,,,     ....../      '# 
"#                auxillary 🔧 ''''''''''''''''/ ⚙️ /______/'''/'''''\ "#
"#                                            /⚙️  /    \_,+--/       \,#   
"'#####################################################################/
      Plug 'brooth/far.vim'                                  "   | |  "#  
      Plug 'simnalamburt/vim-mundo'                          "   | |  "#
      Plug 'ms-jpq/chadtree'                                 "   | |  "#
      Plug 'Shougo/vimproc.vim', {'do' : 'make'}             "   ⚡|  "#
      Plug 'terryma/vim-multiple-cursors'                    " ⚡  |  "#
      Plug 'tpope/vim-eunuch'                                "   ⚡ ⚡"#
      Plug 'tpope/vim-fugitive'                              "    ⚡  "#
      Plug 'tpope/vim-surround'                              "        "#
      Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }         "#
      Plug 'vim-scripts/math'                                         "#
      Plug 'junegunn/gv.vim'                                          "#
      Plug 'Yggdroot/indentLine'                                      "#
      Plug 'unblevable/quick-scope'                                   "#
      Plug 'farmergreg/vim-lastplace'                                 "#
      Plug 'vimwiki/vimwiki'                                          "#
      Plug 'ryanoasis/vim-devicons'                                   "#
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             "#
      Plug 'coreyja/fzf.devicon.vim'                                  "#
      Plug 'junegunn/fzf.vim'                                         "#
      Plug 'thaerkh/vim-workspace'                                    "#
      Plug 'Shougo/deol.nvim'                                         "#
      Plug 'arecarn/vim-crunch'                                       "#
      Plug 'metakirby5/codi.vim'                                      "#
      Plug 'svermeulen/vim-macrobatics'                               "#
      Plug 'tpope/vim-repeat'                                         "#
      Plug 'zsugabubus/vim-paperplane'                                "#
      Plug 'Shougo/deorise.nvim', { 'do': ':UpdateRemotePlugins' }    "#
"#             /#######################################################\
",###############/                                                    '# 
"#                aesthetic 🎨                                        "#
"#                                                                    ,#   
"'#####################################################################/
   Plug 'dylanaraps/wal.vim'                                          "#
   Plug 'https://github.com/lilydjwg/colorizer.git'                   "#
   Plug 'junegunn/goyo.vim'                                           "#
   Plug 'vim-airline/vim-airline'                                     "#
   Plug 'mhinz/vim-startify'                                          "#
   Plug 'gerw/vim-HiLinkTrace'                                        "#
   Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                     "#
"              /#######################################################\
",###############/                                                    '# 
"#                programming ⌨️                                       "#
"#                                                                    ,#   
"'#####################################################################/
Plug 'autozimu/LanguageClient-neovim', {                              
         \ 'branch': 'next',                                          
         \ 'do': 'bash install.sh',                                   
         \ }                                                          "#
Plug 'frazrepo/vim-rainbow'                                           "#
Plug 'neoclide/coc.nvim'                                              "#
Plug 'nvim-treesitter/nvim-treesitter'                                "#
"Plug 'sheerun/vim-polyglot'                                          "#
"Plug 'w0rp/ale'                                                      "#
"Plug 'prabirshrestha/vim-lsp'                                        "#
"              /#######################################################\
",###############/                                                    '# 
"#                lang specific 🉐                                    "#
"#                                                                    ,#   
"'#####################################################################/
Plug 'kovisoft/slimv'                                                 "#
Plug 'vim-scripts/json-formatter.vim'                                 "#
"LSPs                                                                 "# 
Plug 'neovim/nvim-lspconfig'                                          "#
Plug 'kabouzeid/nvim-lspinstall'                                      "#
Plug 'williamboman/nvim-lsp-installer'                                "#
Plug 'glepnir/lspsaga.nvim'                                           "#
Plug 'hrsh7th/cmp-nvim-lsp'                                           "#
Plug 'hrsh7th/cmp-buffer'                                             "#
Plug 'hrsh7th/cmp-path'                                               "#
Plug 'hrsh7th/cmp-cmdline'                                            "#
Plug 'hrsh7th/nvim-cmp'                                               "#
"              /#######################################################\
",###############/                                                    '# 
"#                deps                                                "#
"#                                                                    ,##   
"'#####################################################################/
Plug 'huawenyu/new.vim'                                               "#
Plug 'LucHermitte/lh-vim-lib'                                         "#
Plug 'LucHermitte/vim-build-tools-wrapper'                            "#
Plug 'vim-scripts/Vimball'                                            "#
Plug 'prabirshrestha/async.vim'                                       "#
"#,                                                                 ,"#"
 "####################################################################"
call plug#end() "}}}



" ,#######################,
" # plugin settings 🔌⚙️  '#  {{{
" '#######################'
" wilder
"  call wilder#setup({
"        \ 'modes': [':', '/', '?'],
"        \ 'next_key': '<Tab>',
"        \ 'previous_key': '<S-Tab>',
"        \ 'accept_key': '<Down>',
"        \ 'reject_key': '<Up>',
"        \ })

"  call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
"        \ 'highlighter': wilder#basic_highlighter(),
"        \ 'left': [
"        \   ' ', wilder#popupmenu_devicons(),
"        \ ],
"        \ 'right': [
"        \   ' ', wilder#popupmenu_scrollbar(),
"        \ ],
"        \ 'border': 'rounded'
"        \ })))
"  " For Neovim or Vim with yarp
"  " For wild#cmdline_pipeline():
"  "   'language'   : set to 'python' to use python
"  "   'fuzzy'      : set fuzzy searching
"  " For wild#python_search_pipeline():
"  "   'pattern'    : can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
"  "   'sorter'     : omit to get results in the order they appear in the buffer
"  "   'engine'     : can be set to 're2' for performance, requires pyre2 to be installed
"  call wilder#set_option('pipeline', [
"        \   wilder#branch(
"        \     wilder#cmdline_pipeline({
"        \       'language': 'python',
"        \       'fuzzy': 1,
"        \     }),
"        \     wilder#python_search_pipeline({
"        \       'pattern': wilder#python_fuzzy_pattern(),
"        \       'sorter': wilder#python_difflib_sorter(),
"        \       'engine': 're',
"        \     }),
"        \   ),
"        \ ])

"NERDTree
   autocmd StdinReadPre * let s:std_in=1
   autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
   let g:user_emmet_leader_key=','
   let g:airline_left_sep = "\uE0B8 "
   let g:airline_right_sep = "\uE0BA "
   let g:airline_section_warning = ''
   let g:airline_section_error = ''
   let g:airline_section_z = airline#section#create_right(['%l/%L ☰ %c'])
   let g:airline#extensions#coc#enabled = 0 

"Mundo
   set undofile
   set undodir=~/.config/nvim/undo

"startscreen
   let g:custom_header = readfile('/home/zoe/.config/nvim/header')
   let g:startify_custom_header = startify#center(g:custom_header)

"indent
   let g:indentLine_enabled = 0

"workspaces
   let g:workspace_persist_undo_history = 0

"vanilla
   set viminfo='10,\"100,:20,%,n~/.config/nvim/viminfo

"codi
   let g:codi#width = 100
   let g:code#aliases = {'.wiki':'python'}

"nvim builtin LSP autocomplete
   " Use <Tab> and <S-Tab> to navigate through popup menu
   inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
   inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

   " Set completeopt to have a better completion experience
   "set completeopt=menuone,noinsert,noselect

   " Avoid showing message extra message when using completion
   set shortmess+=c

"}}}

" ,##############,
" # langservers '#  {{{
" '##############'
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

local on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      -- Enable completion triggered by <c-x><c-o>
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      local opts = { noremap=true, silent=true }
      -- buf_set_keymap('n', 'zD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      -- buf_set_keymap('n', 'zd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      -- buf_set_keymap('n', 'zl', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      -- buf_set_keymap('n', 'zi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      -- buf_set_keymap('n', 'zk', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      buf_set_keymap('n', '<space>za', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>zr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>zl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
      -- buf_set_keymap('n', 'zt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
      -- buf_set_keymap('n', 'zr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      -- buf_set_keymap('n', 'zc', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      buf_set_keymap('n', 'zR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap('n', 'ze', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
      -- buf_set_keymap('n', 'zn', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      -- buf_set_keymap('n', 'zN', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
      -- buf_set_keymap('n', 'zq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
      buf_set_keymap('n', 'zF', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
   end

-- setup non-lspinstall servs
local nvim_lsp = require('lspconfig')
local servers = { 'clangd' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

local saga = require 'lspsaga'
saga.init_lsp_saga {
   error_sign = '',
   warn_sign = '',
   hint_sign = '',
   infor_sign = ''
}

saga.init_lsp_saga()

  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

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

  -- Setup lspconfig.
  -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- require('lspconfig')[%YOUR_LSP_SERVER%].setup {
  --  capabilities = capabilities
  --}

EOF
"}}}

" ,##############,
" # remaps ⌨️    '# {{{
" '##############'
let g:mapleader = " "

"plugin toggles
   nnoremap <silent> <C-e> :CHADopen<CR>
   vmap <silent> <C-e> :CHADopen<CR>
   nnoremap <silent> Q :Goyo<CR>
   nnoremap <silent> U :MundoToggle<CR>
   nnoremap <silent> <C-i> :IndentLinesToggle<CR>
   nnoremap <silent> <C-a> :ALEToggle<CR>
   nmap <C-s> :call <SID>SynStack()<CR>
   function! <SID>SynStack()
      if !exists("*synstack")
         return
      endif
      echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
   endfunc 

"LSP
   nnoremap <silent> zf :Lspsaga lsp_finder<CR>
   nnoremap <silent> za :Lspsaga code_action<CR>
   nnoremap <silent> zl :Lspsaga hover_doc<CR>
   nnoremap <silent> zL :Lspsaga signature_help<CR>
   nnoremap <silent> zr :Lspsaga rename<CR>
   nnoremap <silent> zi :Lspsaga show_line_diagnostics<CR>
   nnoremap <silent> zt :Lspsaga open_floaterm<CR>
   nnoremap <silent> zT :Lspsaga close_floaterm<CR>
   nnoremap <silent> zd :Lspsaga preview_definition<CR>


"nav
   nnoremap <leader>h <C-w>h
   nnoremap <leader>j <C-w>j
   nnoremap <leader>k <C-w>k
   nnoremap <leader>l <C-w>l
   nnoremap <leader>J :bprev<CR>
   nnoremap <leader>K :bnext<CR>
   nnoremap <leader>o :tabp<CR>
   nnoremap <leader>p :tabn<CR>
   nnoremap <leader>c :tabnew<CR>
   nnoremap <leader>s :set showtabline=0<CR>
   nnoremap <leader>S :set showtabline=2<CR>
   imap jj <Esc>

"fzf
   nnoremap <leader>f :Files<CR>

"macrobatics
   nmap <nowait> q <plug>(Mac_Play)
   nmap <nowait> gq <plug>(Mac_RecordNew)
   nmap <leader>mn <plug>(Mac_NameCurrentMacro)
   nmap <leader>me <plug>(Mac_SearchForNamedMacroAndPlay)
   nmap <leader>ms <plug>(Mac_SearchForNamedMacroAndSelect)
   vmap <nowait> q <plug>(Mac_Play)
   vmap <nowait> gq <plug>(Mac_RecordNew)
   vmap <leader>mn <plug>(Mac_NameCurrentMacro)
   vmap <leader>me <plug>(Mac_SearchForNamedMacroAndPlay)
   vmap <leader>ms <plug>(Mac_SearchForNamedMacroAndSelect)

"fugitive
   nnoremap <space>ga :Git add %:p<CR><CR>
   nnoremap <space>gs :Gstatus<CR>
   nnoremap <space>gc :Git commit -v -q<CR>
   nnoremap <space>gt :Git commit -v -q %:p<CR>
   nnoremap <space>gd :Gdiff<CR>
   nnoremap <space>ge :Gedit<CR>
   nnoremap <space>gr :Git reset --hard<Space>
   nnoremap <space>gw :Gwrite<CR><CR>
   nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
   nnoremap <space>gp :Ggrep<Space>
   nnoremap <space>gm :Gmove<Space>
   nnoremap <space>gb :Git branch<Space>
   nnoremap <space>go :Git checkout<Space>
   nnoremap <space>gps :Dispatch! git push<CR>
   nnoremap <space>gpl :Dispatch! git pull<CR>
"}}}

" ,##############,
" #' theming 🎨 '#{{{
" '##############'
"NERDTree
augroup nerdtree
  autocmd!
  autocmd FileType nerdtree syntax clear NERDTreeFlags
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree setlocal conceallevel=3
  autocmd FileType nerdtree setlocal concealcursor=nvic
  autocmd ColorScheme * hi NERDTreeDir ctermbg=0 ctermfg=61 cterm=nocombine
  autocmd ColorScheme * hi NERDTreeDirSlash ctermfg=0 cterm=nocombine
augroup END
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden=1
let NERDChristmasTree=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }


"indent guides
"let g:indentLine_setColors = 0
   let g:indentLine_char = '│'
   let g:indnetLine_color_term = 5
   let g:indnetLine_bgcolor_term = 0
   let g:indentLine_conceallevel = '1'

"vanilla scheme
   colorscheme pabloc

"line nums
   set number
   hi LineNr ctermfg=63
   hi Folded ctermbg=64 

"split stuff
   hi VertSplit ctermfg=0 ctermbg=0
   hi Visual ctermbg=63
   set fillchars+=vert:\ 

"hide end of buffer ~
   hi EndOfBuffer ctermfg=0

"italics
   hi Comment cterm=italic
   hi Conditional cterm=italic
   set t_ZH=[3m
   set t_ZR=[23m

"cursor
   if has("autocmd")
      au InsertEnter * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_BLOCK/TERMINAL_CURSOR_SHAPE_UNDERLINE/' ~/.config/xfce4/terminal/terminalrc"
      au InsertLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_UNDERLINE/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"
      au VimLeave * silent execute "!sed -i.bak -e 's/TERMINAL_CURSOR_SHAPE_UNDERLINE/TERMINAL_CURSOR_SHAPE_BLOCK/' ~/.config/xfce4/terminal/terminalrc"  
   endif
   set foldmethod=marker

"lightline
   let g:lightline = {
            \ 'colorscheme': 'wal',
            \ }
   set noshowmode

"ALE
   "let g:ale_sign_error = '✖'
   "let g:ale_sign_warning = '⚠'
   hi todo ctermbg=2 ctermfg=0
   hi error ctermbg=1 ctermfg=0
   let g:ale_linters = {'rust': ['rls']}

"actually dunno but it fixes something(?)
augroup my-colors
   autocmd!
   autocmd ColorScheme * hi IndentGuidesEven ctermbg=2
   autocmd ColorScheme * hi LineNr ctermfg=60
   autocmd ColorScheme * hi VertSplit ctermfg=12 ctermbg=12
   autocmd ColorScheme * hi EndOfBuffer ctermfg=0
augroup END 

"LSP
   hi Pmenu ctermbg=63 ctermfg=62
   hi PmenuSel ctermbg=62 ctermfg=3
   hi LspDiagnosticsDefaultError ctermbg=0 ctermfg=1 
   hi LspDiagnosticsDefaultWarning ctermbg=0 ctermfg=3
   hi DiagnosticInformation ctermbg=0 ctermfg=3
   hi DiagnosticHint ctermbg=0 ctermfg=3
   hi LspFloatWinBorder ctermbg=0 ctermfg=4
   hi LspSagaHoverBorder ctermbg=0 ctermfg=3
   hi LspDiagnosticsSignWarning ctermbg=1 ctermfg=3

"startscreen
   hi StartifyHeader ctermfg=3

"powerline
   let g:airline#extensions#tabline#enabled = 1
   let g:airline#extensions#tabline#left_sep = ''
   let g:airline#extensions#tabline#left_alt_sep = '  '
   let g:airline#extensions#tabline#formatter = 'unique_tail'
   let g:airline#extensions#tabline#show_tab_count = 0
   let g:airline#extensions#tabline#show_tab_type = 0
   let g:airline#extensions#tabline#show_close_button = 0
   let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
   let g:airline_theme='zoe'
"}}}
"
function! SynStack()
  if !exists("*synstack")
    return
  endif
  redir! >>/tmp/syns
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  redir END
endfunc
nnoremap <leader>ma :call timer_start(200, { tid -> execute('call SynStack()')})<CR>

" Customize fzf colors to match your color scheme
hi FzfBorder ctermbg=0 ctermfg=61
let g:fzf_colors =
\ { 'fg': ['fg', 'Normal'],
\ 'bg': ['bg', 'Normal'],
\ 'hl': ['fg', 'Comment'],
\ 'fg+': ['fg', 'CursorLine', 'Pmenu', 'Normal'],
\ 'bg+': ['bg', 'CursorLine', 'Pmenu'],
\ 'hl+': ['fg', 'FoldColumn'],
\ 'info': ['fg', 'FoldColumn'],
\ 'border': ['fg', 'FzfBorder'],
\ 'prompt': ['fg', 'MsgArea'],
\ 'pointer': ['fg', 'FoldColumn'],
\ 'marker': ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header': ['fg', 'Comment'] }


call system("printf \"" . expand('%:p') . "\\n\" > /tmp/nvim_sessions/" . getpid())
autocmd VimLeave * :call system("rm /tmp/nvim_sessions/" . getpid())

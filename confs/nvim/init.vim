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
      Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }"   | |  "#
      Plug 'Shougo/vimproc.vim', {'do' : 'make'}             "   ⚡|  "#
      Plug 'terryma/vim-multiple-cursors'                    " ⚡  |  "#
      Plug 'tpope/vim-eunuch'                                "   ⚡ ⚡"#
      Plug 'tpope/vim-fugitive'                              "    ⚡  "#
      Plug 'tpope/vim-surround'                              "        "#
      Plug 'vim-scripts/math'                                         "#
      Plug 'junegunn/gv.vim'                                          "#
      Plug 'Yggdroot/indentLine'                                      "#
      Plug 'unblevable/quick-scope'                                   "#
      Plug 'farmergreg/vim-lastplace'                                 "#
      Plug 'vimwiki/vimwiki'                                          "#
      Plug 'ryanoasis/vim-devicons'                                   "#
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             "#
      Plug 'junegunn/fzf.vim'                                         "#
      Plug 'thaerkh/vim-workspace'                                    "#
      Plug 'Shougo/deol.nvim'                                         "#
      Plug 'arecarn/vim-crunch'                                       "#
      Plug 'metakirby5/codi.vim'                                      "#
      Plug 'svermeulen/vim-macrobatics'                               "#
      Plug 'tpope/vim-repeat'                                         "#
      Plug 'zsugabubus/vim-paperplane'                                "#
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
Plug 'sheerun/vim-polyglot'                                           "#
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
Plug 'glepnir/lspsaga.nvim'                                           "#
Plug 'nvim-lua/completion-nvim'                                       "#
"              /#######################################################\
",###############/                                                    '# 
"#                deps                                                "#
"#                                                                    ,#   
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
   set completeopt=menuone,noinsert,noselect

   " Avoid showing message extra message when using completion
   set shortmess+=c

"}}}

" ,##############,
" # langservers '#  {{{
" '##############'
lua << EOF
require'lspinstall'.setup{}

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

-- setup lspinstall servers
local servers = require'lspinstall'.installed_servers()
for k, server in pairs(servers) do
   require'lspconfig'[server].setup{
      on_attach = require'completion'.on_attach,
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
EOF
"}}}

" ,##############,
" # remaps ⌨️    '# {{{
" '##############'
let g:mapleader = " "

"plugin toggles
   nnoremap <silent> <C-e> :NERDTreeToggle<CR>
   vmap <silent> <C-e> :NERDTreeToggle<CR>
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
   hi LineNr ctermfg=61

"split stuff
   hi VertSplit ctermfg=12 ctermbg=12
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
   hi Pmenu ctermbg=61 ctermfg=4
   hi PmenuSel ctermbg=60 ctermfg=3
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
   let g:airline#extensions#tabline#left_alt_sep = ' '
   let g:airline#extensions#tabline#formatter = 'unique_tail'
   let g:airline#extensions#tabline#show_tab_count = 0
   let g:airline#extensions#tabline#show_tab_type = 0
   let g:airline#extensions#tabline#show_close_button = 0
   let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"}}}





call system("printf \"" . expand('%:p') . "\\n\" > /tmp/nvim_sessions/" . getpid())
autocmd VimLeave * :call system("rm /tmp/nvim_sessions/" . getpid())

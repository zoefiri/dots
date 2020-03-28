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


"{{{ options
    set clipboard=unnamedplus
    set cpoptions-=C
    set nocompatible
    set ts=3
    set sw=3 et "}}}

"{{{ plugins
call plug#begin()
   "auxillary
      Plug 'brooth/far.vim'
      Plug 'mbbill/undotree'
      Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
      Plug 'Shougo/vimproc.vim', {'do' : 'make'}
      Plug 'terryma/vim-multiple-cursors'
      Plug 'tpope/vim-eunuch'
      Plug 'tpope/vim-fugitive'
      Plug 'tpope/vim-surround'
      Plug 'vim-scripts/Conque-Shell'
      Plug 'vim-scripts/math'
      Plug 'Yggdroot/indentLine'
   "aesthetic
      Plug 'dylanaraps/wal.vim'
      Plug 'https://github.com/lilydjwg/colorizer.git'
      Plug 'junegunn/goyo.vim'
      Plug 'vim-airline/vim-airline'
   "programming
      Plug 'autozimu/LanguageClient-neovim', {
          \ 'branch': 'next',
          \ 'do': 'bash install.sh',
          \ }
      Plug 'junegunn/rainbow_parentheses.vim'
      Plug 'neoclide/coc.nvim'
      Plug 'sheerun/vim-polyglot'
      Plug 'w0rp/ale'
   "lang specific
      Plug 'kovisoft/slimv'
      Plug 'mattn/emmet-vim'
      Plug 'vim-scripts/json-formatter.vim'
   "deps
      Plug 'huawenyu/new.vim'
      Plug 'LucHermitte/lh-vim-lib'
      Plug 'LucHermitte/vim-build-tools-wrapper'   
      Plug 'vim-scripts/Vimball'

call plug#end() "}}}

"theming {{{
    "indent guides
      "let g:indentLine_setColors = 0
      let g:indentLine_char = '│'
      let g:indnetLine_color_term = 5
      let g:indnetLine_bgcolor_term = 0

    "vanilla
    "scheme
        colorscheme pabloc
    "line nums
        set number
        hi LineNr ctermfg=60
    "split stuff
        hi VertSplit ctermfg=12 ctermbg=12
        set fillchars+=vert:┃
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
    let g:ale_sign_error = '✖'
    let g:ale_sign_warning = '⚠'
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
    augroup END "}}}

"plugin settings {{{
    "NERDTree
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
    let g:user_emmet_leader_key=','
    let g:airline_left_sep = "\uE0B8 "
    let g:airline_right_sep = "\uE0BA "
    let g:airline_section_warning = ''
    let g:airline_section_error = ''
    let g:airline_section_z = airline#section#create_right(['%l/%L ☰ %c'])
    let g:airline#extensions#coc#enabled = 0 "}}}

"remaps {{{
    "window nav
    nnoremap H <C-w>h
    nnoremap J <C-w>j
    nnoremap K <C-w>k
    nnoremap L <C-w>l
    "plugin toggles
    nnoremap <silent> <C-e> :NERDTreeToggle<CR>
    nnoremap <silent> Q :Goyo<CR>
    nnoremap <silent> U :UndotreeToggle<CR>
    nnoremap <silent> <C-i> :IndentLinesToggle<CR>
    nnoremap <silent> <C-a> :ALEToggle<CR>
    nmap <C-s> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc "}}


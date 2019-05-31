"   ###########################################################################
"   #                                                                         #
"   #  nvim init.vim by zoefiri                            — ▭ ✖              #
"   #                                                                         #
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


"options
    set clipboard=unnamedplus
    set cpoptions-=C
    set nocompatible
    set ts=4
    set sw=4 et

"plugins
call plug#begin()
    Plug 'w0rp/ale'
    Plug 'junegunn/goyo.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'dylanaraps/wal.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'mbbill/undotree'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-eunuch'
    Plug 'brooth/far.vim'
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1
call plug#end()


"theming
    "indent guides
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 2
    hi IndentGuidesEven ctermbg=2

    "vanilla
    "scheme
        colorscheme pabloc
    "line nums
        set number
        hi LineNr ctermfg=60
    "split stuff
        hi VertSplit ctermfg=12 ctermbg=12
        set fillchars+=vert:o
    "hide end of buffer ~
        hi EndOfBuffer ctermfg=0
    "italics
        hi Comment cterm=italic
        hi Conditional cterm=italic
        set t_ZH=[3m
        set t_ZR=[23m

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

    let g:ale_linters = {'rust': ['cargo']}

    "actually dunno but it fixes something(?)
    augroup my-colors
        autocmd!
        autocmd ColorScheme * hi IndentGuidesEven ctermbg=2
        autocmd ColorScheme * hi LineNr ctermfg=60
        autocmd ColorScheme * hi VertSplit ctermfg=12 ctermbg=12
        autocmd ColorScheme * hi EndOfBuffer ctermfg=0
    augroup END


"plugin settings
    "NERDTree
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"remaps
    "window nav
    nnoremap H <C-w>h
    nnoremap J <C-w>j
    nnoremap K <C-w>k
    nnoremap L <C-w>l
    "plugin toggles
    nnoremap <silent> <C-e> :NERDTreeToggle<CR>
    nnoremap <silent> Q :Goyo<CR>
    nnoremap <silent> U :UndotreeToggle<CR>
    nnoremap <silent> <C-i> :IndentGuidesToggle<CR>
    nnoremap <silent> <C-a> :ALEToggle<CR>
    nmap <C-s> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc


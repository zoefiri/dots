local M = {}
M.methods = {}


function M.setup()
   local db = require('dashboard')
   local home = os.getenv('HOME')
   db.custom_header = { [[a]] }
   db.custom_center = {
      { icon = '  ',
         desc = 'Recently latest session                  ',
         shortcut = 'SPC s l',
         action = 'SessionLoad' },
      { icon = '  ',
         desc = 'Recently opened files                   ',
         action = 'DashboardFindHistory',
         shortcut = 'SPC f h' },
      { icon = '  ',
         desc = 'Find  File                              ',
         action = 'Telescope find_files find_command=rg,--hidden,--files',
         shortcut = 'SPC f f' },
      { icon = '  ',
         desc = 'File Browser                            ',
         action = 'Telescope file_browser',
         shortcut = 'SPC f b' },
      { icon = '  ',
         desc = 'Find  word                              ',
         action = 'Telescope live_grep',
         shortcut = 'SPC f w' },
      { icon = '  ',
         desc = 'Open Personal dotfiles                  ',
         action = 'Telescope dotfiles path=' .. home .. '/.dotfiles',
         shortcut = 'SPC f d' },
   }

   db.setup({
      config = {
         header = {[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]],[[ ]]}
      }
   })
   vim.cmd [[
         function! DashboardImage()
         let s:width = 30
         let s:height = 22
         let s:row = float2nr(s:height / 5)
         let s:col = float2nr((&columns - s:width) / 2)
         let g:chafaterm_buff = -1
         let s:opts = {
            \ 'relative': 'editor',
            \ 'row': s:row,
            \ 'col': s:col,
            \ 'width': s:width,
            \ 'height': s:height,
            \ 'style': 'minimal'
            \ }
            let s:buf = nvim_create_buf(v:false, v:true)
            let s:win = nvim_open_win(s:buf, v:true, s:opts)
            hi! DashboardImage guibg=NONE guifg=NONE
            call nvim_win_set_option(s:win, "winblend", 0)
            call nvim_win_set_option(s:win, "winhl", "Normal:DashboardImage")
            terminal chafa -c 256 --fg-only --symbols braille  /home/zoe/.config/nvim/LAINHADN3.gif
            let g:chafaterm_buff = bufnr('%')
            :exe "normal G"
            :exe "normal \<C-W>\<C-w>"
            call timer_start(100, {-> execute('normal zb')})
            endfunction

            function! CloseDashboardImage()
            if g:chafaterm_buff > -1 
               echom "HIIII" g:chafaterm_buff
               echom "GARR" g:chafaterm_buff
               bdelete! g:chafaterm_buff
               echom "yARR" g:chafaterm_buff
            endif
            endfunction
            ]]

            vim.cmd [[autocmd Filetype dashboard call DashboardImage()]]
            -- vim.cmd [[autocmd BufCreate * call CloseDashboardImage()]]
end

return M

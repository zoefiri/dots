local M = {}
M.methods = {}


function M.setup()
   -- following options are the default
   -- each of these are documented in `:help nvim-tree.OPTION_NAME`
   require'nvim-tree'.setup {
      disable_netrw        = false,
      hijack_netrw         = true,
      auto_reload_on_write = true,
      open_on_tab          = false,
      hijack_cursor        = false,
      update_cwd           = false,
      hijack_unnamed_buffer_when_opening = false,
      hijack_directories   = {
         enable = true,
         auto_open = true,
      },
      diagnostics = {
         enable = false,
         icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
         }
      },
      update_focused_file = {
         enable      = false,
         update_cwd  = false,
         ignore_list = {}
      },
      system_open = {
         cmd  = nil,
         args = {}
      },
      filters = {
         dotfiles = false,
         custom = {}
      },
      git = {
         enable = true,
         ignore = true,
         timeout = 500,
      },
      view = {
         width = 30,
         side = 'left',
         preserve_window_proportions = false,
         number = false,
         relativenumber = false,
         signcolumn = "yes"
      },
      trash = {
         cmd = "trash",
         require_confirm = true
      },
      actions = {
         change_dir = {
            enable = true,
            global = false,
         },
         open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
               enable = true,
               chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
               exclude = {
                  filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
                  buftype  = { "nofile", "terminal", "help", },
               }
            }
         }
      },
      log = {
         enable = false,
         types = {
            all = false,
            config = false,
            git = false,
         },
      },
   }
end

return M

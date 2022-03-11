local M = {}
M.methods = {}


function M.setup()
   require'notify'.setup {
      -- Animation style (see below for details)
      stages = "slide",

      -- Function called when a new window is opened, use for changing win settings/config
      on_open = nil,

      -- Function called when a window is closed
      on_close = nil,

      -- Render function for notifications. See notify-render()
      render = "default",

      -- Default timeout for notifications
      timeout = 5000,

      -- Max number of columns for messages
      max_width = nil,
      -- Max number of lines for a message
      max_height = nil,

      -- For stages that change opacity this is treated as the highlight behind the window
      -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
      background_colour = "Normal",

      -- Minimum width for notification windows
      minimum_width = 50,

      -- Icons for the different levels
      icons = {
         ERROR = "",
         WARN = "",
         INFO = "",
         DEBUG = "",
         TRACE = "✎",
      },
   }
   vim.notify = require('notify')
   local client_notifs = {}

   local spinner_frames = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" }

   local function update_spinner(client_id, token)
      local notif_data = client_notifs[client_id][token]

      if notif_data and notif_data.spinner then
         local new_spinner = (notif_data.spinner + 1) % #spinner_frames

         local new_notif = vim.notify(nil, nil, {
            hidden = true,
            icon = spinner_frames[new_spinner],
            replace = notif_data.notification,
         })

         client_notifs[client_id][token] = {
            notification = new_notif,
            spinner = new_spinner,
         }

         vim.defer_fn(function()
            update_spinner(client_id, token)
         end, 100)
      end
   end

   local function format_title(title, client)
      return client.name .. (#title > 0 and ": " .. title or "")
   end

   local function format_message(message, percentage)
      return (percentage and percentage .. "%\t" or "") .. (message or "")
   end

   vim.lsp.handlers["$/progress"] = function(_, result, ctx)
      local client_id = ctx.client_id

      local val = result.value

      if not val.kind then
         return
      end
      if not client_notifs[client_id] then
         client_notifs[client_id] = {}
      end

      local notif_data = client_notifs[client_id][result.token]

      if val.kind == "begin" then
         local message = format_message(val.message, val.percentage)

         local notification = vim.notify(message, "info", {
            title = format_title(val.title, vim.lsp.get_client_by_id(client_id)),
            icon = spinner_frames[1],
            timeout = false,
            hidden = false,
         })

         client_notifs[client_id][result.token] = {
            notification = notification,
            spinner = 1,
         }

         update_spinner(client_id, result.token)
      elseif val.kind == "report" and notif_data then
         local new_notif = vim.notify(format_message(val.message, val.percentage), "info", {
            replace = notif_data.notification,
            hidden = false,
         })

         client_notifs[client_id][result.token] = {
            notification = new_notif,
            spinner = notif_data.spinner,
         }
      elseif val.kind == "end" and notif_data then
      local new_notif =
      vim.notify(val.message and format_message(val.message) or "Complete", "info", {
         icon = "",
         replace = notif_data.notification,
         timeout = 3000,
      })

      client_notifs[client_id][result.token] = {
         notification = new_notif,
      }
      end
   end

end

return M

local M = {}
M.methods = {}

local easypick = require("easypick")

function M.setup()
   -- a list of commands that you want to pick from
   local named_macros = [[
   call substitute(macrobatics#displayNamedMacros(), '--- Named Macros ---\n', '', '')
   ]]

   easypick.setup({
      pickers = {
         {
            name = "named_macros",
            command = named_macros,
            -- pass a pre-configured action that runs the command
            action = easypick.actions.macrobatics_pick,
            -- you can specify any theme you want, but the dropdown looks good for this example =)
            opts = require('telescope.themes').get_dropdown({})
         },
         {
            name = "macro_history",
   { "inkarkat/vim-SyntaxRange" },
            command = macros_history,
            -- pass a pre-configured action that runs the command
            action = easypick.actions.macrobatics_pick,
            -- you can specify any theme you want, but the dropdown looks good for this example =)
            opts = require('telescope.themes').get_dropdown({})
         }
      }
   })
end

return M

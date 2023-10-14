
local hiLinks = {
   {link="DashboardCenter",   to="accentAltFg" },          -- dashboard
   {link="DashboardShortCut", to="hidden"},
   {link="DashboardFooter",   to="accentVivid"},

   {link="CmpBorderedWindow_Normal",     to="menuBkg" },   -- cmp
   {link="CmpBorderedWindow_CursorLine", to="menuSel" },
   {link="CmpBorderedWindow_FloatBorder",to="winBorder" },

   {link="DiagnosticSignWarn",           to="fgYellow" },  -- LSP
   {link="DiagnosticSignHint",           to="fgBlue" },
   {link="DiagnosticSignInfo",           to="fgTeal" },
   {link="DiagnosticSignError",          to="fgRed" },
   {link="Pmenu",                        to="menuBkg" },
   {link="FloatBorder",                  to="winBorder" },

   {link="NvimTreeFolderName",           to="accentFg" },  -- nvimtree
   {link="NvimTreeRootFolder",           to="subtleFgAlt" },  -- nvimtree

   {link="VimwikiHeader1",               to="c1" },  -- vimwiki
   {link="VimwikiHeader2",               to="c2" },
   {link="VimwikiHeader3",               to="c3" },
   {link="VimwikiHeader4",               to="c4" },
   {link="VimwikiHeader5",               to="c5" },
   {link="VimwikiHeader5",               to="c5" },
   {link="Vimwiki",               to="c5" },
}

for _, hiLink in ipairs(hiLinks) do
   vim.cmd("highlight! link " .. hiLink.link .. " " .. hiLink.to)
end

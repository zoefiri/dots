local new_groups = {
   {name="accentFg",      fg=60, bg=0}, -- ------ generic color names
   {name="fgAlt",         fg=61, bg=0},
   {name="accentVivid",   fg=62, bg=0},
   {name="accentAltFg",   fg=65, bg=0},
   {name="subtleFg",      fg=63, bg=0},
   {name="subtleFgAlt",      fg=63, bg=0},
   {name="fgRed",         fg=1,  bg=0},
   {name="fgYellow",      fg=2,  bg=0},
   {name="fgOrange",      fg=3,  bg=0},
   {name="fgGreen",       fg=4,  bg=0},
   {name="fgTeal",        fg=5,  bg=0},
   {name="fgBlue",        fg=6,  bg=0},

   {name="winBorder",      fg=64, bg=0}, -- ------ window/menu highlights
   {name="winBorderBright",fg=65, bg=0},
   {name="winBorderAlt",   fg=62, bg=0},
   {name="menuBkg",        fg=61, bg=0},
   {name="menuBkgAlt",     fg=4,  bg=0},
   {name="menuSel",        fg=61, bg=63},
   {name="menuSelAlt",     fg=0,  bg=65},


   {name="hidden",         fg=0,  bg=0}, -- ------ meta stuff
   {name="hiddenAltBkg",   fg=63, bg=63},

   {name="c1",        fg=1,  bg=0},
   {name="c2",        fg=2,  bg=0},
   {name="c3",        fg=3,  bg=0},
   {name="c4",        fg=4,  bg=0},
   {name="c5",        fg=5,  bg=0},
   {name="c6",        fg=6,  bg=0},

   {name="c1Inv",        fg=0,  bg=1},
   {name="c2Inv",        fg=0,  bg=2},
   {name="c3Inv",        fg=0,  bg=3},
   {name="c4Inv",        fg=0,  bg=4},
   {name="c5Inv",        fg=0,  bg=5},
   {name="c6Inv",        fg=0,  bg=6},
   {name="bgAltInv",        fg=0,  bg=63},
}

for _, higroup in ipairs(new_groups) do
   vim.api.nvim_command("highlight " .. higroup.name .. " ctermfg=" .. higroup.fg .. " ctermbg=" .. higroup.bg)
end



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

   {link="TabActiveFill",               to="bgAltInv" },  -- tabby
   {link="TabActiveEdge",               to="subtleFg" },
   {link="TabInactiveFill",               to="c2Inv" },
   {link="TabInactiveEdge",               to="c2" },
   {link="TabLineFill",                   to="hidden"   },
}

for _, hiLink in ipairs(hiLinks) do
   vim.cmd("highlight! link " .. hiLink.link .. " " .. hiLink.to)
end

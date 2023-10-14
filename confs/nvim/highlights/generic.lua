vim.cmd("colorscheme pabloc")

local bg = "NONE"
local new_groups = {
   {name="subtleBg",      fg=60, bg=bg}, -- ------ generic color names
   {name="brightBg",      fg=61, bg=bg},
   {name="highlightBg",   fg=62, bg=bg},
   {name="accentBg",      fg=63, bg=bg},
   {name="accentFg",      fg=64, bg=bg},
   {name="colorfulFg",    fg=65, bg=bg},
   {name="fgRed",         fg=1,  bg=bg},
   {name="fgYellow",      fg=2,  bg=bg},
   {name="fgOrange",      fg=3,  bg=bg},
   {name="fgGreen",       fg=4,  bg=bg},
   {name="fgTeal",        fg=5,  bg=bg},
   {name="fgBlue",        fg=6,  bg=bg},

   {name="winBorder",      fg=64, bg=bg}, -- ------ window/menu highlights
   {name="winBorderBright",fg=65, bg=bg},
   {name="winBorderAlt",   fg=62, bg=bg},
   {name="menuBkg",        fg=61, bg=bg},
   {name="menuBkgAlt",     fg=4,  bg=bg},
   {name="menuSel",        fg=61, bg=63},
   {name="menuSelAlt",     fg=bg,  bg=65},


   {name="hidden",         fg=bg,  bg=bg}, -- ------ meta stuff
   {name="hiddenAltBkg",   fg=63, bg=63},

   {name="c1",        fg=1,  bg=bg},
   {name="c2",        fg=2,  bg=bg},
   {name="c3",        fg=3,  bg=bg},
   {name="c4",        fg=4,  bg=bg},
   {name="c5",        fg=5,  bg=bg},
   {name="c6",        fg=6,  bg=bg},
   {name="c7",        fg=7,  bg=bg},

   {name="c1Inv",        fg=bg,  bg=1},
   {name="c2Inv",        fg=bg,  bg=2},
   {name="c3Inv",        fg=bg,  bg=3},
   {name="c4Inv",        fg=bg,  bg=4},
   {name="c5Inv",        fg=bg,  bg=5},
   {name="c6Inv",        fg=bg,  bg=6},
   {name="c7Inv",        fg=bg,  bg=7},
   {name="bgAltInv",        fg=bg,  bg=63},
}

for _, higroup in ipairs(new_groups) do
   vim.api.nvim_command("highlight " .. higroup.name .. " ctermfg=" .. higroup.fg .. " ctermbg=" .. higroup.bg)
end



local hiLinks = {
   {link="DashboardCenter",   to="accentAltFg" },          -- dashboard
   {link="DashboardShortCut", to="hidden"},
   {link="DashboardFooter",   to="accentVivid"},

   {link="CmpBorderedWindow_Normal",     to="subtleFg" },   -- cmp
   {link="CmpBorderedWindow_CursorLine", to="menuSel" },
   {link="CmpBorderedWindow_FloatBorder",to="winBorder" },
   {link="CmpItemKind",                  to="fgAlt" },
   {link="CmpItemAbbr",                  to="c7" },
   {link="CmpItemAbbrMatch",             to="winBorder" },

   {link="DiagnosticSignWarn",           to="fgYellow" },  -- LSP
   {link="DiagnosticSignHint",           to="fgBlue" },
   {link="DiagnosticSignInfo",           to="fgTeal" },
   {link="DiagnosticSignError",          to="fgRed" },
   {link="Pmenu",                        to="menuBkg" },
   {link="PmenuSel",                     to="c5" },
   {link="FloatBorder",                  to="winBorder" },

   {link="NvimTreeFolderName",           to="accentFg" },  -- nvimtree
   {link="NvimTreeRootFolder",           to="subtleFgAlt" },  -- nvimtree

   {link="VimwikiHeader1",               to="c1" },  -- vimwiki
   {link="VimwikiHeader2",               to="c2" },
   {link="VimwikiHeader3",               to="c3" },
   {link="VimwikiHeader4",               to="c4" },
   {link="VimwikiHeader5",               to="c5" },
   {link="VimwikiHeader5",               to="c5" },
   {link="Vimwiki",                      to="c5" },

   {link="TabActiveFill",               to="accentBg" },  -- tabby
   {link="TabActiveEdge",               to="subtleFg" },
   {link="TabInactiveFill",               to="c3inv" },
   {link="TabInactiveEdge",               to="c3inv" },
   {link="TabLineFill",                   to="hidden"   },

   {link="EndOfBuffer",                   to="trans"}
}

for _, hiLink in ipairs(hiLinks) do
   vim.api.nvim_command("highlight! link " .. hiLink.link .. " " .. hiLink.to)
end

vim.api.nvim_command("highlight! trans ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE")
vim.api.nvim_command("highlight! transBG ctermbg=NONE guibg=NONE")
vim.api.nvim_command("highlight! transFG ctermfg=NONE guifg=NONE")

vim.api.nvim_command("highlight! WLifg_ibg cterm=bold")
vim.api.nvim_command("highlight! WLsfg_sbg cterm=bold")

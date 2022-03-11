local new_groups = {
   {name="accentFg",      fg=60, bg=0}, -- ------ generic color names
   {name="fgAlt",         fg=61, bg=0},
   {name="accentVivid",   fg=62, bg=0},
   {name="accentAltFg",   fg=65, bg=0},
   {name="fgRed",         fg=1,  bg=0},
   {name="fgYellow",      fg=2,  bg=0},
   {name="fgOrange",      fg=3,  bg=0},
   {name="fgGreen",       fg=4,  bg=0},
   {name="fgTeal",        fg=5,  bg=0},
   {name="fgBlue",        fg=6,  bg=0},

   {name="winBorder",      fg=63, bg=0}, -- ------ window/menu highlights
   {name="winBorderBright",fg=65, bg=0},
   {name="winBorderAlt",   fg=62, bg=0},
   {name="menuBkg",        fg=61, bg=0},
   {name="menuBkgAlt",     fg=4,  bg=0},
   {name="menuSel",        fg=61, bg=63},
   {name="menuSelAlt",     fg=0,  bg=65},


   {name="hidden",         fg=0,  bg=0}, -- ------ meta stuff
   {name="hiddenAltBkg",   fg=63, bg=63},
}

for _, higroup in ipairs(new_groups) do
   vim.api.nvim_command("highlight " .. higroup.name .. " ctermfg=" .. higroup.fg .. " ctermbg=" .. higroup.bg)
end



local hiLinks = {
   {link="DashboardCenter",   to="fgRed" },               -- dashboard
   {link="DashboardShortCut", to="hidden"},
   {link="DashboardFooter",   to="accentVivid"},

   {link="CmpBorderedWindow_Normal",     to="menuBkg" },  -- cmp
   {link="CmpBorderedWindow_CursorLine", to="menuSel" },
   {link="CmpBorderedWindow_FloatBorder",to="winBorder" },
}

for _, hiLink in ipairs(hiLinks) do
   vim.cmd("highlight link " .. hiLink.link .. " " .. hiLink.to)
end

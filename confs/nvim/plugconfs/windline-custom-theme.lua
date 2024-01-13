local windline = require('windline')
local helper = require('windline.helpers')
local b_components = require('windline.components.basic')
local state = _G.WindLine.state

local lsp_comps = require('windline.components.lsp')
local git_comps = require('windline.components.git')

local hl_list = {
    Black = { 'black', 'test' },
    White = { 'test', 'white' },
    Inactive = { 'sbg', 'sfg', 'bold' },
    Active = { 'ActiveFg', 'ActiveBg', 'bold' },
}
local basic = {}

local breakpoint_width = 90
basic.divider = { b_components.divider, '' }
basic.bg = { 'c1', 'StatusLine' }

local colors_mode = {
    Normal = { 'c0', 'c0' },
    Insert = { 'c9', 'c1' },
    Visual = { 'c4', 'c1' },
    Replace = { 'c2', 'c1' },
    Command = { 'c12', 'c1' },

    NormalIcon= { 'c7', 'c0' },
    InsertIcon= { 'c9', 'c1' },
    VisualIcon= { 'c4', 'c1' },
    ReplaceIcon = { 'c2', 'c1' },
    CommandIcon = { 'c12', 'c1' },

    NormalSlantEnd= { 'c0', 'c1' },
    InsertSlantEnd= { 'c9', 'c1' },
    VisualSlantEnd= { 'c4', 'c1' },
    ReplaceSlantEnd = { 'c2', 'c1' },
    CommandSlantEnd = { 'c12', 'c1' },
}

basic.vi_mode = {
    name = 'vi_mode',
    hl_colors = colors_mode,
    text = function()
        return { 
           { ' ⚝  ', state.mode[2].."Icon" },
           { ' ', state.mode[2], },
           { '', state.mode[2].."SlantEnd" },
        }
    end,
}
basic.square_mode = {
    hl_colors = colors_mode,
    text = function()
        return { { '▊', state.mode[2] } }
    end,
}

basic.lsp_diagnos = {
    name = 'diagnostic',
    hl_colors = {
        red = { 'c7', '' },
        yellow = { 'c8', '' },
        blue = { 'c10', '' },
        fg = { 'c2', '' },
    },
    width = breakpoint_width,
    text = function(bufnr)
        if lsp_comps.check_lsp(bufnr) then
            return {
                { ' ', 'red' },
                { lsp_comps.lsp_error({ format = '  %s', show_zero = true }), 'red' },
                { lsp_comps.lsp_warning({ format = '  %s', show_zero = true }), 'yellow' },
                { lsp_comps.lsp_hint({ format = '  %s', show_zero = true }), 'blue' },
            }
        end
        return ''
    end,
}
basic.file = {
    name = 'file',
    hl_colors = {
        default = { 'c5', 'c1' },
        white = { 'white', 'c1' },
        magenta = { 'magenta', 'c1' },
        custom = { 'c6', 'c1' },
        custom2 = { 'c8', 'c1' },
        slant_end = { 'c5', '' }
    },
    text = function(_, _, width)
        if width > breakpoint_width then
            return {
                { ' ', '' },
                { b_components.cache_file_size(), 'default' },
                { ' ', '' },
                { b_components.cache_file_name('x ‿ x', 'unique'), 'custom' },
                { b_components.line_col_lua, 'default' },
                { b_components.progress_lua, 'default' },
                { ' ', '' },
                { b_components.file_modified(' '), 'custom2' },
                { ' ', { 'c2', '' } },
                { ' ', { 'c4', 'c3' } },
                { '', 'slant_end' }
            }
        else
            return {
                { b_components.cache_file_size(), 'default' },
                { ' ', '' },
                { b_components.cache_file_name('x ‿ x', 'unique'), 'custom2' },
                { ' ', '' },
                { b_components.file_modified(' '), 'custom' },
                { ' ', { 'c2', '' } },
                { ' ', { 'c4', 'c3' } },
                { '', 'slant_end' }
            }
        end
    end,
}
basic.file_right = {
    hl_colors = {
        { 'c2', 'test' },
        white = { 'white', 'test' },
        magenta = { 'magenta', 'test' },
    },
    text = function(_, _, width)
        if width < breakpoint_width then
            return {
                { b_components.line_col_lua, 'white' },
                { b_components.progress_lua, '' },
            }
        end
    end,
}
basic.git = {
    name = 'git',
    hl_colors = {
        green = { 'c7', 'test' },
        red = { 'c8', 'test' },
        blue = { 'c10', 'test' },
        fg = { 'c2', 'test' },
    },
    width = breakpoint_width,
    text = function(bufnr)
        if git_comps.is_git(bufnr) then
            return {
                { git_comps.diff_added({ format = '  %s', show_zero = true }), 'green' },
                { git_comps.diff_removed({ format = '  %s', show_zero = true }), 'red' },
                { git_comps.diff_changed({ format = '  %s', show_zero = true }), 'blue' },
                { git_comps.git_branch({ icon='  ' }), 'fg' },
            }
        end
        return ''
    end,
}

local quickfix = {
    filetypes = { 'qf', 'Trouble' },
    active = {
        { '🚦 Quickfix ', { 'white', 'test' } },
        { helper.separators.slant_right, { 'test', 'test' } },
        {
            function()
                return vim.fn.getqflist({ title = 0 }).title
            end,
            { 'cyan', 'test' },
        },
        { ' Total : %L ', { 'cyan', 'test' } },
        { helper.separators.slant_right, { 'test', 'sbg' } },
        { ' ', { 'sbg', 'sbg' } },
        basic.divider,
        { helper.separators.slant_right, { 'sbg', 'test' } },
        { '🧛 ', { 'white', 'test' } },
    },

    always_active = true,
    show_last_status = true,
}

local explorer = {
    filetypes = { 'fern', 'NvimTree', 'lir' },
    active = {
        { '  ', { 'test', 'red' } },
        { helper.separators.slant_right, { 'red', 'NormalBg' } },
        { b_components.divider, '' },
        { b_components.file_name(''), { 'white', 'NormalBg' } },
    },
    always_active = true,
    show_last_status = true,
}

basic.lsp_name = {
    width = breakpoint_width,
    name = 'lsp_name',
    hl_colors = {
        lsptitle = { 'c8', 'test' },
        slant_end = { 'c5', '' },
        slant_mid = { 'c4', '' },
    },
    text = function(bufnr)
        if lsp_comps.check_lsp(bufnr) then
            return {
               { ' ', 'slant_end' },
               { '', 'slant_mid' },
               { ' ', { 'c2', 'c3' } },
               { lsp_comps.lsp_name(), 'lsptitle' },
            }
        end
        return {
           { ' ', 'slant_end' },
           { '', 'slant_mid' },
           { ' ', { 'c2', 'c3' } },
           { b_components.cache_file_type({icon = true}), 'lsptitle' },
        }
    end,
}

local default = {
   colors_name = function(colors)
      -- print(vim.inspect(colors))
      -- ADD MORE COLOR HERE ----
      colors.test = 61
      colors.c2 = 61
      colors.c7 = 1
      colors.c8 = 2
      colors.c9 = 3
      colors.c10 = 4
      colors.c11 = 5
      colors.c12 = 6
      colors.sbg = 3
      colors.sfg = 62
      colors.ibg = 6
      colors.ifg = 3
      colors.null = "NONE"

      return colors
    end,
    filetypes = { 'default' },
    active = {
        basic.square_mode,
        basic.vi_mode,
        basic.file,
        basic.lsp_diagnos,
        basic.divider,
        basic.file_right,
        basic.lsp_name,
        basic.git,
        { ' ', hl_list.Black },
        basic.square_mode,
    },
    inactive = {
        { b_components.full_file_name, hl_list.Inactive },
        basic.file_name_inactive,
        basic.divider,
        basic.divider,
        { b_components.line_col, hl_list.Inactive },
        { b_components.progress, hl_list.Inactive },
    },
}

windline.setup({
   colors_name = function(colors)
      -- print(vim.inspect(colors))
      -- ADD MORE COLOR HERE ----
      colors.test = 63
      colors.c2 = 61
      colors.c7 = 1
      colors.c8 = 2
      colors.c9 = 3
      colors.c10 = 4
      colors.c11 = 5
      colors.c12 = 6

      return colors
    end,
    statuslines = {
        default,
        quickfix,
        explorer,
    },
})

local colors = {
    bg        = "#080d0f",
    bg_alt    = "#0c1316",
    bg_soft   = "#11191c",

    fg        = "#c3c8c6",
    fg_dark   = "#7b8685",
    muted     = "#53605f",

    teal      = "#68aaa5",
    teal_dark = "#315f5d",

    green     = "#789b88",

    red       = "#d05d50",
    red_dark  = "#8f3f3a",

    orange    = "#d28b57",

    yellow    = "#d3b75f",
    beige     = "#bca88b",

    blue      = "#6f929d",

    border    = "#243337",

    none      = "NONE",
}

vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "solanum"

local set = vim.api.nvim_set_hl

-- Editor --------------------------------------------------------

set(0, "Normal", {
    fg = colors.fg,
    bg = colors.none,
})

set(0, "NormalNC", {
    fg = colors.fg,
    bg = colors.none,
})

set(0, "NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_alt,
})

set(0, "FloatBorder", {
    fg = colors.teal_dark,
    bg = colors.bg_alt,
})

set(0, "CursorLine", {
    bg = colors.bg_soft,
})

set(0, "CursorColumn", {
    bg = colors.bg_soft,
})

set(0, "ColorColumn", {
    bg = colors.bg_soft,
})

set(0, "LineNr", {
    fg = colors.muted,
})

set(0, "CursorLineNr", {
    fg = colors.beige,
    bold = true,
})

set(0, "SignColumn", {
    bg = colors.none,
})

set(0, "VertSplit", {
    fg = colors.border,
})

set(0, "WinSeparator", {
    fg = colors.border,
})

set(0, "Visual", {
    bg = "#183034",
})

set(0, "Search", {
    fg = colors.bg,
    bg = colors.yellow,
})

set(0, "IncSearch", {
    fg = colors.bg,
    bg = colors.orange,
})

set(0, "MatchParen", {
    fg = colors.yellow,
    bold = true,
})

-- Syntax --------------------------------------------------------

set(0, "Comment", {
    fg = colors.muted,
    italic = true,
})

set(0, "String", {
    fg = colors.green,
})

set(0, "Character", {
    fg = colors.green,
})

set(0, "Number", {
    fg = colors.yellow,
})

set(0, "Boolean", {
    fg = colors.orange,
})

set(0, "Float", {
    fg = colors.yellow,
})

set(0, "Identifier", {
    fg = colors.fg,
})

set(0, "Function", {
    fg = colors.teal,
})

set(0, "Statement", {
    fg = colors.red,
})

set(0, "Conditional", {
    fg = colors.red,
})

set(0, "Repeat", {
    fg = colors.red,
})

set(0, "Label", {
    fg = colors.orange,
})

set(0, "Operator", {
    fg = colors.beige,
})

set(0, "Keyword", {
    fg = colors.red,
})

set(0, "Exception", {
    fg = colors.red,
})

set(0, "PreProc", {
    fg = colors.orange,
})

set(0, "Include", {
    fg = colors.red,
})

set(0, "Define", {
    fg = colors.orange,
})

set(0, "Macro", {
    fg = colors.orange,
})

set(0, "Type", {
    fg = colors.teal,
})

set(0, "StorageClass", {
    fg = colors.red,
})

set(0, "Structure", {
    fg = colors.teal,
})

set(0, "Typedef", {
    fg = colors.teal,
})

set(0, "Special", {
    fg = colors.orange,
})

set(0, "Delimiter", {
    fg = colors.fg_dark,
})

set(0, "Error", {
    fg = colors.red,
})

set(0, "Todo", {
    fg = colors.bg,
    bg = colors.yellow,
    bold = true,
})

-- Treesitter ----------------------------------------------------

set(0, "@comment", {
    link = "Comment",
})

set(0, "@string", {
    link = "String",
})

set(0, "@number", {
    link = "Number",
})

set(0, "@boolean", {
    link = "Boolean",
})

set(0, "@function", {
    fg = colors.teal,
})

set(0, "@function.call", {
    fg = colors.teal,
})

set(0, "@function.builtin", {
    fg = colors.blue,
})

set(0, "@keyword", {
    fg = colors.red,
})

set(0, "@keyword.function", {
    fg = colors.red,
})

set(0, "@keyword.return", {
    fg = colors.red,
})

set(0, "@type", {
    fg = colors.teal,
})

set(0, "@type.builtin", {
    fg = colors.teal,
})

set(0, "@variable", {
    fg = colors.fg,
})

set(0, "@variable.builtin", {
    fg = colors.beige,
})

set(0, "@constant", {
    fg = colors.yellow,
})

set(0, "@property", {
    fg = colors.blue,
})

set(0, "@operator", {
    fg = colors.beige,
})

set(0, "@punctuation.delimiter", {
    fg = colors.fg_dark,
})

set(0, "@punctuation.bracket", {
    fg = colors.fg_dark,
})

-- Diagnostics ---------------------------------------------------

set(0, "DiagnosticError", {
    fg = colors.red,
})

set(0, "DiagnosticWarn", {
    fg = colors.yellow,
})

set(0, "DiagnosticInfo", {
    fg = colors.blue,
})

set(0, "DiagnosticHint", {
    fg = colors.teal,
})

-- Git -----------------------------------------------------------

set(0, "GitSignsAdd", {
    fg = colors.green,
})

set(0, "GitSignsChange", {
    fg = colors.yellow,
})

set(0, "GitSignsDelete", {
    fg = colors.red,
})

-- Completion ----------------------------------------------------

set(0, "Pmenu", {
    fg = colors.fg,
    bg = colors.bg_alt,
})

set(0, "PmenuSel", {
    fg = colors.bg,
    bg = colors.teal,
})

set(0, "PmenuSbar", {
    bg = colors.bg_soft,
})

set(0, "PmenuThumb", {
    bg = colors.teal_dark,
})

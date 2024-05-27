--@type ChadrcConfig
local M = {}
local opt = vim.opt

----- NVIM SETTINGS -----
opt.wrap = false
opt.ruler = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.relativenumber = false

----- NVCHAD SETTINGS -----
M.ui = {
    lsp_semantic_tokens = true,
    transparency = true,
    theme = 'gruvchad',
    theme_toggle = {
        "gruvchad",
        "doomchad",
    },
    statusline = {
        theme = "vscode_colored",
    },
    tabufline = {
        show_numbers = false,
        enabled = true,
        lazyload = true,
    },
    nvdash = {
        load_on_startup = true,

        header = {
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
        },

        buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M

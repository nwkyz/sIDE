-- SEARCH LENS ===============================================

require('hlslens').setup()

-- SCROLL BAR ================================================

require('scrollview').setup({
    excluded_filetypes = {'nerdtree'},
    current_only = true,
    scrollview_refresh_time = 100,
    scrollview_winblend = 35
})

-- MOUSE GESTURE =============================================

vim.opt.mouse = "a"

-- vim.keymap.set("n", "<LeftDrag>", [[<Cmd>lua require("gesture").draw()<CR>]], { silent = true })
-- vim.keymap.set("n", "<LeftRelease>", [[<Cmd>lua require("gesture").finish()<CR>]], { silent = true })

-- or if you would like to use right click
vim.keymap.set("n", "<RightMouse>", [[<Nop>]])
vim.keymap.set("n", "<RightDrag>", [[<Cmd>lua require("gesture").draw()<CR>]], { silent = true })
vim.keymap.set("n", "<RightRelease>", [[<Cmd>lua require("gesture").finish()<CR>]], { silent = true })

local gesture = require("gesture")
gesture.register({
    name = "SCROLL TO BOTTOM",
    inputs = { gesture.up(), gesture.down() },
    action = "normal! G",
})
gesture.register({
    name = "SCROLL TO TOP",
    inputs = { gesture.down(), gesture.up() },
    action = "normal! gg",
})
gesture.register({
    name = "NEXT TAB",
    inputs = { gesture.right() },
    action = "BufferNext",
})
gesture.register({
    name = "PREVIOUS TAB",
    inputs = { gesture.left() },
    action = "BufferPrevious",
})
gesture.register({
    name = "GO BACK",
    inputs = { gesture.right(), gesture.left() },
    -- map to `<C-o>` keycode
    action = function()
        vim.api.nvim_feedkeys(vim.keycode("<C-o>"), "n", true)
    end,
})

-- WINDOW ANIMATION ==========================================
vim.o.winwidth = 10
vim.o.winminwidth = 10
vim.o.equalalways = false
require('windows').setup()

-- INDENT LINE ===============================================
vim.opt.list = true

-- RAINBOW INDENT
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup {
    indent = {
        highlight = highlight
    },
    exclude = {
        filetypes = {
            'dashboard',
        },
    }
}

-- EXPLORER ==================================================
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

-- COMMENT ===================================================
require('Comment').setup()

-- SUDA ======================================================
vim.cmd([[let g:suda#prompt = 'Enter your root password to save the protected file: ']])
vim.g.suda_smart_edit = 1

-- MARKDOWN PREVIEW ==========================================
vim.g.mkdp_page_title = 'Preview of ${name} - sIDE'
vim.g.mkdp_auto_close = 0

-- GIT MANAGEMENT ============================================
-- init.lua
local neogit = require('neogit')
neogit.setup {}

vim.opt.termguicolors = true

--[[
require("bufferline").setup {
    options = {
        -- INTEGRATED LSP
        diagnostics = "nvim_lsp",
        close_command = ":Bdelete! %d",
        buffer_close_icon = '󰅖',
        -- SPACE FOR NVIM-TREE
        offsets = {{
            filetype = "NvimTree",
            text = "FILE EXPLORER",
            highlight = "Directory",
            text_align = "left"
        }},
        hover = {
            enabled = true,
            delay=0,
            reveal = {'close'}
        }
    },
} ]]--

vim.g.barbar_auto_setup = false -- disable auto-setup

require'barbar'.setup {
    sidebar_filetypes = {
        NvimTree = {text = ' File Explorer'},
    },
    icons = {
        -- Configure the base icons on the bufferline.
        -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true, icon = ' '},
            [vim.diagnostic.severity.WARN] = {enabled = true, icon = ' '},
            [vim.diagnostic.severity.INFO] = {enabled = true, icon = ' '},
            [vim.diagnostic.severity.HINT] = {enabled = true, icon = '󱧢 '},
        },
        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'},
        },
        filetype = {
            -- Sets the icon's highlight group.
            -- If false, will use nvim-web-devicons colors
            custom_colors = false,

            -- Requires `nvim-web-devicons` if `true`
            enabled = true,
        },
        separator = {left = '▎', right = ''},

        -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = {button = '󰛿 '},
        pinned = {button = '', filename = true},

        -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
        preset = 'default',

        -- Configure the icons on the bufferline based on the visibility of a buffer.
        -- Supports all the base icon options, plus `modified` and `pinned`.
        -- alternate = {filetype = {enabled = false}},
        -- current = {buffer_index = false},
        -- inactive = {button = ''},
        -- visible = {modified = {buffer_number = false}},
    },
}

local nonecolor = ""

vim.api.nvim_set_hl(0, 'BufferCurrentADDED', { fg = "#72d49a", bg = nonecolor })
vim.api.nvim_set_hl(0, 'BufferCurrentCHANGED', { fg = "#3dbbff", bg = nonecolor })
vim.api.nvim_set_hl(0, 'BufferCurrentDELETED', { fg = "#ff3d3d", bg = nonecolor })
vim.api.nvim_set_hl(0, 'BufferInactiveADDED', { fg = "#4B9568", bg = nonecolor })
vim.api.nvim_set_hl(0, 'BufferInactiveCHANGED', { fg = "#4A6180", bg = nonecolor })
vim.api.nvim_set_hl(0, 'BufferInactiveDELETED', { fg = "#8E3332", bg = nonecolor })

-- SWITCH BETWEEN BUFFERS
vim.keymap.set("n", "<leader>j1", "<cmd>BufferGoto 1<CR>", {desc='Jump To Tab 1'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j2", "<cmd>BufferGoto 2<CR>", {desc='Jump To Tab 2'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j3", "<cmd>BufferGoto 3<CR>", {desc='Jump To Tab 3'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j4", "<cmd>BufferGoto 4<CR>", {desc='Jump To Tab 4'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j5", "<cmd>BufferGoto 5<CR>", {desc='Jump To Tab 5'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j6", "<cmd>BufferGoto 6<CR>", {desc='Jump To Tab 6'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j7", "<cmd>BufferGoto 7<CR>", {desc='Jump To Tab 7'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j8", "<cmd>BufferGoto 8<CR>", {desc='Jump To Tab 8'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j9", "<cmd>BufferGoto 9<CR>", {desc='Jump To Tab 9'}, {noremap = true, silent = true})



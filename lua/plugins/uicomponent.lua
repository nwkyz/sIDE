require('hlslens').setup()

require('scrollview').setup({
    excluded_filetypes = {'nerdtree'},
    current_only = true,
    scrollview_refresh_time = 75,
    scrollview_winblend = 35
})

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

vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        -- INTEGRATED LSP
        diagnostics = "nvim_lsp",
        close_command = ":bdelete! %d",
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
}

-- SWITCH BETWEEN BUFFERS
vim.keymap.set("n", "<leader>j1", ":BufferLineGoToBuffer 1<CR>", {desc='Jump To Tab 1'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j2", ":BufferLineGoToBuffer 2<CR>", {desc='Jump To Tab 2'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j3", ":BufferLineGoToBuffer 3<CR>", {desc='Jump To Tab 3'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j4", ":BufferLineGoToBuffer 4<CR>", {desc='Jump To Tab 4'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j5", ":BufferLineGoToBuffer 5<CR>", {desc='Jump To Tab 5'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j6", ":BufferLineGoToBuffer 6<CR>", {desc='Jump To Tab 6'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j7", ":BufferLineGoToBuffer 7<CR>", {desc='Jump To Tab 7'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j8", ":BufferLineGoToBuffer 8<CR>", {desc='Jump To Tab 8'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>j9", ":BufferLineGoToBuffer 9<CR>", {desc='Jump To Tab 9'}, {noremap = true, silent = true})

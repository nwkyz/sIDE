vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        -- INTEGRATED LSP
        diagnostics = "nvim_lsp",
        -- SPACE FOR NVIM-TREE
        offsets = {{
            filetype = "NvimTree",
            text = "FILE EXPLORER",
            highlight = "Directory",
            text_align = "left"
        }},
        hover = {
            enabled = true,
            delay=200,
            reveal = {'close'}
        }
    }
}

-- SWITCH BETEWWN BUFFERS
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", {desc='Go To Tab 1'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", {desc='Go To Tab 2'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", {desc='Go To Tab 3'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", {desc='Go To Tab 4'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", {desc='Go To Tab 5'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", {desc='Go To Tab 6'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", {desc='Go To Tab 7'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", {desc='Go To Tab 8'}, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", {desc='Go To Tab 9'}, {noremap = true, silent = true})

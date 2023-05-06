vim.g.mapleader = " "

local keymap = vim.keymap

-- -- VISUAL MODE
-- MOVE CODE BLOCK
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -- NORMAL MODE
-- ADD WINDOW
keymap.set("n", "<leader>sv", "<C-w>v") --HORIZONAL
keymap.set("n", "<leader>sh", "<C-w>s") --VERTICAL

-- DISABLE HIGHLIGHT
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- -- PLUGINS
-- NVIM-TREE
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- BUFFER SWITCH
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
-- MARKDOWN PREVIEW
keymap.set("n", "<leader><F8>", ":MarkdownPreview<CR>")
keymap.set("n", "<leader><F9>", ":MarkdownPreviewStop<CR>")

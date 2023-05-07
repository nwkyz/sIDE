vim.g.mapleader = " "

local keymap = vim.keymap

-- -- VISUAL MODE
-- MOVE CODE BLOCK
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -- NORMAL MODE
-- SPLIT WINDOW
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
-- TOGGLE INTEGRATED TERMINAL
keymap.set("n", "<leader>t", ":call TerminalToggle()<CR>")
-- CHECK PLUGIN UPDATE
keymap.set("n", "<leader>u", ":PackerSync<CR>")
-- TOGGLE AUTO SAVE
keymap.set("n", "<leader>a", ":ASToggle<CR>")
-- BUFFERLINE CLOSE
keymap.set("n", "<leader>c", ":bdelete<CR>")
-- CREATE NEW BLANK BUFFER
keymap.set("n", "<leader>n", ":enew<CR>")
-- TURN TO DASHBOARD
keymap.set("n", "<leader>h", ":Dashboard<CR>")
-- QUIT
keymap.set("n", "<leader>q", ":q<CR>")
-- SPELL CHECK
keymap.set("n", "wc", "z=")
keymap.set("n", "wd", "zg")
keymap.set("n", "wn", "]s")
keymap.set("n", "wp", "[s")

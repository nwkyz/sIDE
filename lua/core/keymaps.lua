vim.g.mapleader = " "

local keymap = vim.keymap

-- -- VISUAL MODE
-- MOVE CODE BLOCK
keymap.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
keymap.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- -- NORMAL MODE
-- SPLIT WINDOW
keymap.set("n", "<leader>wv", "<C-w>v", {desc='Window - Split Vertically'})
keymap.set("n", "<leader>wh", "<C-w>s", {desc='Window - Split Horizontally'})
keymap.set("n", "<leader>wm", "<cmd>lua require('maximize').toggle()<CR>", {desc='Window - Maximize'})
keymap.set("n", "<leader>wc", "<cmd>bdelete!<CR>", {desc='Window - Close'})

-- DISABLE HIGHLIGHT
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", {desc='Disable Highlight'})

-- -- PLUGINS
-- NVIM-TREE
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {desc='Toggle Explorer'})
-- BUFFER SWITCH
keymap.set("n", "<S-L>", "<cmd>bnext<CR>", {desc='Tab Next'})
keymap.set("n", "<S-H>", "<cmd>bprevious<CR>", {desc='Tab Previous'})
-- MARKDOWN PREVIEW
keymap.set("n", "<leader><F8>", "<cmd>MarkdownPreview<CR>", {desc='Start MD Preview'})
keymap.set("n", "<leader><F9>", "<cmd>MarkdownPreviewStop<CR>", {desc='Stop MD Preview'})
-- TOGGLE INTEGRATED TERMINAL
keymap.set("n", "<leader>t", "<cmd>call TerminalToggle()<CR>", {desc='Toggle Terminal'})
-- CHECK PLUGIN UPDATE
keymap.set("n", "<leader>u", "<cmd>PackerSync<CR>", {desc='Update Additions'})

-- -- CONFIG
-- TOGGLE AUTO SAVE
keymap.set("n", "<leader>ca", "<cmd>ASToggle<CR>", {desc='Config - Toggle Autosave'})
-- LSP CONFIG
keymap.set("n", "<leader>cl", "<cmd>Mason<CR>", {desc='Config - LSP Config'})

-- -- FUNCTIONS
-- CREATE NEW BLANK BUFFER
keymap.set("n", "<leader>n", "<cmd>enew<CR>", {desc='Create New Buffer'})
-- TURN TO DASHBOARD
keymap.set("n", "<leader>h", "<cmd>Dashboard<CR>", {desc='Toggle Homepage'})
-- QUIT
keymap.set("n", "<leader>q", "<cmd>q<CR>", {desc='Quit'})
--SAVE
keymap.set("n", "<leader>s", "<cmd>w<CR>", {desc='Save'})
-- SPELL CHECK
keymap.set("n", "wc", "z=", {desc='Writer - Correct'})
keymap.set("n", "wd", "zg", {desc='Writer - Add to dictionary'})
keymap.set("n", "wn", "]s", {desc='Writer - Next Incorrect'})
keymap.set("n", "wp", "[s", {desc='Writer - Previous Incorrect'})
-- SWITCH THEME
keymap.set("n", "<leader>cd", "<cmd>set background=dark<CR>", {desc='Config - Theme - Dark'})
keymap.set("n", "<leader>cl", "<cmd>set background=light<CR>", {desc='Config - Theme - Light'})
-- TROUBLE
keymap.set("n", "<leader>iv", "<cmd>TroubleToggle<CR>", {desc='Issues - View'})
keymap.set("n", "<leader>if", "<cmd>TroubleToggle quickfix<CR>", {desc='Issues - Quickfix'})
-- AI COPILOT
keymap.set("n", "<leader>as", "<cmd>HFccSuggestion<CR>", {desc='AI - Suggestions'})
-- VIEW NOTIFY HISTORY
keymap.set("n", "<leader>vn", "<cmd>Notifications<CR>", {desc='View - Notifications History'})
-- CLEAR SPELL CHECKER HIGHLIGHT
keymap.set("n", "<leader>cs", "<cmd>highlight clear SpellBad<CR>", {desc='Config - Clear Spell Checker Highlight'})
-- NEOGIT
keymap.set("n", "<leader>gu", "<cmd>Neogit<CR>", {desc='Git - UI'})
keymap.set("n", "<leader>gc", "<cmd>Neogit commit<CR>", {desc='Git - Commit'})
-- EXPLORER MAPPINGS
local etapi = require('nvim-tree.api')
keymap.set("n", "<leader>on", etapi.fs.create, {desc='New'})
keymap.set("n", "<leader>or", etapi.fs.rename, {desc='Rename'})
keymap.set("n", "<leader>od", etapi.fs.remove, {desc='Delete'})
keymap.set("n", "<leader>oh", etapi.tree.toggle_hidden_filter, {desc='Show Dotfiles'})
keymap.set("n", "<leader>oc", etapi.fs.copy.node, {desc='Copy'})
keymap.set("n", "<leader>op", etapi.fs.paste, {desc='Paste'})
keymap.set("n", "<leader>os", etapi.tree.search_node, {desc='Search'})
keymap.set("n", "<leader>oo", etapi.node.run.system, {desc='Open With Default'})

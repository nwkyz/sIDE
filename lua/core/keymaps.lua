vim.g.mapleader = " "

local keymap = vim.keymap

-- -- VISUAL MODE
-- MOVE CODE BLOCK
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -- NORMAL MODE
-- SPLIT WINDOW
keymap.set("n", "<leader>sv", "<C-w>v", {desc='Split Vertically'}) --HORIZONAL
keymap.set("n", "<leader>sh", "<C-w>s", {desc='Split Horizontally'}) --VERTICAL

-- DISABLE HIGHLIGHT
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc='Disable Highlight'})

-- -- PLUGINS
-- NVIM-TREE
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {desc='Toggle Explorer'})
-- BUFFER SWITCH
keymap.set("n", "<S-L>", ":bnext<CR>", {desc='Tab Next'})
keymap.set("n", "<S-H>", ":bprevious<CR>", {desc='Tab Previous'})
-- MARKDOWN PREVIEW
keymap.set("n", "<leader><F8>", ":MarkdownPreview<CR>", {desc='Start MD Preview'})
keymap.set("n", "<leader><F9>", ":MarkdownPreviewStop<CR>", {desc='Stop MD Preview'})
-- TOGGLE INTEGRATED TERMINAL
keymap.set("n", "<leader>t", ":call TerminalToggle()<CR>", {desc='Toggle Terminal'})
-- CHECK PLUGIN UPDATE
keymap.set("n", "<leader>u", ":PackerSync<CR>", {desc='Update Additions'})

-- -- CONFIG
-- TOGGLE AUTO SAVE
keymap.set("n", "<leader>ca", ":ASToggle<CR>", {desc='Config - Toggle Autosave'})
-- LSP CONFIG
keymap.set("n", "<leader>cl", ":Mason<CR>", {desc='Config - LSP Config'})

-- -- FUNCTIONS
-- CREATE NEW BLANK BUFFER
keymap.set("n", "<leader>n", ":enew<CR>", {desc='Create New Buffer'})
-- TURN TO DASHBOARD
keymap.set("n", "<leader>h", ":Dashboard<CR>", {desc='Toggle Homepage'})
-- QUIT
keymap.set("n", "<leader>q", ":q<CR>", {desc='Quit'})
--SAVE
keymap.set("n", "<leader>w", ":w<CR>", {desc='Save'})
-- SPELL CHECK
keymap.set("n", "wc", "z=", {desc='Writer - Correct'})
keymap.set("n", "wd", "zg", {desc='Writer - Add to dictionary'})
keymap.set("n", "wn", "]s", {desc='Writer - Next Incorrect'})
keymap.set("n", "wp", "[s", {desc='Writer - Previous Incorrect'})
-- SWITCH THEME
keymap.set("n", "<leader>cd", ":set background=dark<CR>", {desc='Config - Theme - Dark'})
keymap.set("n", "<leader>cl", ":set background=light<CR>", {desc='Config - Theme - Light'})
-- TROUBLE
keymap.set("n", "<leader>iv", ":TroubleToggle<CR>", {desc='Issues - View'})
keymap.set("n", "<leader>if", ":TroubleToggle quickfix<CR>", {desc='Issues - Quickfix'})
-- AI COPILOT
keymap.set("n", "<leader>as", ":HFccSuggestion<CR>", {desc='AI - Suggestions'})
-- VIEW NOTIFY HISTORY
keymap.set("n", "<leader>vn", ":Notifications<CR>", {desc='View - Notifications History'})
-- CLEAR SPELL CHECKER HIGHLIGHT
keymap.set("n", "<leader>cs", ":highlight clear SpellBad<CR>", {desc='Config - Clear Spell Checker Highlight'})

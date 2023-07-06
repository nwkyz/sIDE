vim.g.mapleader = " "

local keymap = vim.keymap

-- VISUAL ========================================================
-- MOVE CODE BLOCK 
keymap.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
keymap.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- -- NORMAL =====================================================
-- CLOSE
keymap.set("n", "<leader>d", ":Bd!<CR>", {desc='Close Window'})

-- SPLIT WINDOW
keymap.set("n", "<leader>wv", "<C-w>v", {desc='Window - Split Vertically'})
keymap.set("n", "<leader>wh", "<C-w>s", {desc='Window - Split Horizontally'})
keymap.set("n", "<leader>wm", "<cmd>WindowsMaximize<CR>", {desc='Window - Maximize'})
keymap.set("n", "<leader>wc", "<cmd>bdelete!<CR>", {desc='Window - Close'})

-- DISABLE HIGHLIGHT
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", {desc='Disable Highlight'})

-- NVIM-TREE
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {desc='Explorer'})

-- BUFFER SWITCH
keymap.set("n", "<S-L>", "<cmd>BufferNext<CR>", {desc='Window - Next'})
keymap.set("n", "<S-H>", "<cmd>BufferPrevious<CR>", {desc='Window - Previous'})
keymap.set("n", "<leader>wn", "<cmd>BufferNext<CR>", {desc='Window - Next'})
keymap.set("n", "<leader>wp", "<cmd>BufferPrevious<CR>", {desc='Window - Previous'})
keymap.set("n", "<leader>wsp", "<cmd>BufferMovePrevious<CR>", {desc='Move - To Previous'})
keymap.set("n", "<leader>wsn", "<cmd>BufferMoveNext<CR>", {desc='Move - To Next'})
keymap.set("n", "<leader>wf", "<cmd>BufferPin<CR>", {desc='Window - Pin'})
keymap.set("n", "<leader>we", "<cmd>WindowsEqualize<CR>", {desc='Window - Equalize'})

-- TOGGLE INTEGRATED TERMINAL
keymap.set("n", "<leader>t", "<cmd>call TerminalToggle()<CR>", {desc='Toggle Terminal'})

-- CHECK PLUGIN UPDATE
keymap.set("n", "<leader>u", "<cmd>PackerSync<CR>", {desc='Update Additions'})

-- CREATE NEW BLANK BUFFER
keymap.set("n", "<leader>n", "<cmd>enew<CR>", {desc='Create New Buffer'})

-- TURN TO DASHBOARD
keymap.set("n", "<leader>h", "<cmd>Dashboard<CR>", {desc='Homepage'})

-- QUIT
keymap.set("n", "<leader>q", "<cmd>q<CR>", {desc='Quit'})

--SAVE
keymap.set("n", "<leader>s", "<cmd>w<CR>", {desc='Save'})

-- SPELL CHECK
keymap.set("n", "wc", "z=", {desc='Writer - Correct'})
keymap.set("n", "wd", "zg", {desc='Writer - Add to dictionary'})
keymap.set("n", "wn", "]s", {desc='Writer - Next Incorrect'})
keymap.set("n", "wp", "[s", {desc='Writer - Previous Incorrect'})

-- TROUBLE
keymap.set("n", "<leader>vp", "<cmd>TroubleToggle<CR>", {desc='View - Problems'})
keymap.set("n", "<leader>vf", "<cmd>TroubleToggle quickfix<CR>", {desc='View - Problems Quickfix'})

-- AI COPILOT
keymap.set("n", "<leader>a", "<cmd>HFccSuggestion<CR>", {desc='Copilot Suggest'})

-- VIEW NOTIFY HISTORY
keymap.set("n", "<leader>vn", "<cmd>Notifications<CR>", {desc='View - Notifications History'})

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

-- BOOKMARKS
keymap.set("n", "<leader>mt", "<cmd>BookmarkToggle<CR>", {desc='Bookmark - Toggle'})
keymap.set("n", "<leader>ma", "<cmd>BookmarkAnnotate ", {desc='Bookmark - Annotation'})
keymap.set("n", "<leader>mc", "<cmd>BookmarkClear<CR>", {desc='Bookmark - Clear All'})
keymap.set("n", "<leader>ms", "<cmd>BookmarkShowAll<CR>", {desc='Bookmark - Bookmark Summary'})

-- -- CONFIG =====================================================
-- HLSLENS
keymap.set("n", "<leader>chs", "<cmd>HlSearchLensToggle<CR>", {desc='Highlight - Toggle Search'})
-- BAR
keymap.set("n", "<leader>cbe", "<cmd>:ScrollViewEnable<CR>", {desc='Scrollbar - Enable'})
keymap.set("n", "<leader>cbd", "<cmd>:ScrollViewDisable<CR>", {desc='Scrollbar - Disable'})
keymap.set("n", "<leader>cbs", "<cmd>:ScrollViewSync<CR>", {desc='Scrollbar - Sync'})
-- DISABLE HIGHLIGHT
keymap.set("n", "<leader>chn", "<cmd>nohl<CR>", {desc='Highlight - Disable'})
-- TOGGLE AUTO SAVE
keymap.set("n", "<leader>cs", "<cmd>ASToggle<CR>", {desc='Config - Toggle Autosave'})
-- LSP CONFIG
keymap.set("n", "<leader>cl", "<cmd>Mason<CR>", {desc='Config - LSP Config'})
-- SWITCH THEME
keymap.set("n", "<leader>ctd", "<cmd>set background=dark<CR>", {desc='Theme - Dark'})
keymap.set("n", "<leader>ctl", "<cmd>set background=light<CR>", {desc='Theme - Light'})
-- CLEAR SPELL CHECKER HIGHLIGHT
keymap.set("n", "<leader>chc", "<cmd>highlight clear SpellBad<CR>", {desc='Highlight - Clear Spell Checker'})
-- TOGGLE ILLUMINATE REUSED WORDS
keymap.set("n", "<leader>chr", "<cmd>IlluminateToggle<CR>", {desc='Highlight - Toggle Reused Words'})
-- AUTOWIDTH
keymap.set("n", "<leader>cm", "<cmd>WindowsToggleAutowidth<CR>", {desc='Config - Toggle Autowidth'})
-- AI COPILOT
keymap.set("n", "<leader>ca", "<cmd>HFccToggleAutoSuggest<CR>", {desc='Config - Toggle Copilot Auto Suggest'})
-- INLINE FOLD
keymap.set("n", "<leader>cf", "<cmd>ToggleInlineFold<CR>", {desc='Config - Toggle Inline Fold'})

-- -- EXTENSIONS =================================================
-- MARKDOWN PREVIEW
keymap.set("n", "<leader>pm", "<cmd>MarkdownPreviewToggle<CR>", {desc='Extensions - Markdown Preview'})
-- PLANTUML PREVIEW
keymap.set("n", "<leader>ppo", "<cmd>PlantumlOpen<CR>", {desc='PlantUML - Preview'})
keymap.set("n", "<leader>ppp", "<cmd>PlantumlStop<CR>", {desc='PLantUML - Stop Preview'})
keymap.set("n", "<leader>pps", ":PlantumlSave", {desc='PlantUML - Save to'})

vim.g.terminal_emulator='kitty'
require("plugins.plugins-setup")
require("core.options")
require("core.keymaps")
require("plugins.themeswitch")
-- PLUGINS
require("plugins.common")
require("plugins.devicons")
require("plugins.lualine")
-- require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
-- require("plugins.comment")
require("plugins.autopairs")
require("plugins.tab")
-- require("plugins.tabbar")
require("plugins.gitsigns")
require("plugins.telescope")
require("plugins.auto-save")
require("plugins.smooth")
require("plugins.key-menu")
require("plugins.trouble")
require("plugins.newui")
require("plugins.notify")
--require("plugins.aicc")
-- require("plugins.indent-guide")
require("plugins.illuminate")
require("plugins.uicomponent")
-- require("plugins.ale")
-- require("plugins.dashboard")
-- require('plugins.vim-terminal-help')

vim.o.titlestring="sIDE - %F %a %r %m"
vim.cmd([[set title]])
vim.cmd([[set spelllang=en_us]])
vim.cmd([[set spell]])
vim.notify = require("notify")


require("plugins.plugins-setup")
require("core.options")
require("core.keymaps")

-- PLUGINS
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.comment")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.gitsigns")
require("plugins.telescope")
require("plugins.auto-save")
require("plugins.smooth-cursor")
-- require("plugins.ale")
-- require("plugins.dashboard")
-- require('plugins.vim-terminal-help')

vim.o.titlestring="sIDE: %F %a %r %m"
vim.cmd([[set title]])
vim.cmd([[set spelllang=en_us]])
vim.cmd([[set spell]])



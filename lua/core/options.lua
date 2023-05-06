local opt = vim.opt

-- Line Number
opt.relativenumber = false
opt.number = true

-- Indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Disable Wrap
opt.wrap = false

-- Cursor Line
opt.cursorline = true

-- Enable Mouse Control
opt.mouse:append("a")

-- System Clipboard
opt.clipboard:append("unnamedplus")

-- Default Split Window
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- True Terminal Color
opt.termguicolors = true
opt.signcolumn = "yes"

-- Theming
vim.cmd[[colorscheme tokyonight-moon]]



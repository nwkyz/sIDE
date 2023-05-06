local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- PACKER PLUGIN MANAGER
  use 'folke/tokyonight.nvim' --THEME
  use {
    'nvim-lualine/lualine.nvim', -- LUALINE STATUS BAR
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-tree/nvim-tree.lua', -- INTEGRATED EXPLORER
    requires = {
      'nvim-tree/nvim-web-devicons', -- OPTIONAL
    },
  }
  use("christoomey/vim-tmux-navigator") -- TMUX NAVIGATOR
  use("nvim-treesitter/nvim-treesitter") -- TREESITTER
  use("p00f/nvim-ts-rainbow") -- TS RAINBOW
  use { -- MASON
    "williamboman/mason.nvim", -- MASON
    "williamboman/mason-lspconfig.nvim", -- MASON CONFIG
    "neovim/nvim-lspconfig" -- VIM CONFIG
  }
  use "hrsh7th/nvim-cmp" -- CMP
  use "hrsh7th/cmp-nvim-lsp" -- CMP LSP
  use "L3MON4D3/LuaSnip" -- SNIPPETS ENGINE
  use "saadparwaiz1/cmp_luasnip" -- LUASNIP
  use "rafamadriz/friendly-snippets" -- BETTER SNIPPETS
  use "hrsh7th/cmp-path" -- FILE PATH
  use "numToStr/Comment.nvim" -- GCC/GCCOMMENT
  use "windwp/nvim-autopairs" -- AUTOPAIR
  use "akinsho/bufferline.nvim" -- BUFFER SWITCH
  use "lewis6991/gitsigns.nvim" -- GIT STATUS
  use "skywind3000/vim-terminal-help" -- TERMINAL HELPER
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', -- TELESCOPE SEARCH
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
    "iamcco/markdown-preview.nvim", -- MARKDOWN PREVIEW
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    'glepnir/dashboard-nvim', -- STARTUP DASHBOARD PAGE
    event = 'VimEnter',
    config = function()
      require('plugins.dashboard')
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

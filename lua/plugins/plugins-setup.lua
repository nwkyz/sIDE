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
  -- CORE FUNCTIONS
  use 'wbthomason/packer.nvim' -- 1 PACKER PLUGIN MANAGER
  --use 'folke/tokyonight.nvim' -- 2 THEME
  use 'navarasu/onedark.nvim'
  use {
    'nvim-lualine/lualine.nvim', -- 3 LUALINE STATUS BAR
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- 4 DEPENDENCIES: WEB-DEVICONS
  }
  use {
    'nvim-tree/nvim-tree.lua', -- 5 INTEGRATED EXPLORER
    requires = {
    --  'nvim-tree/nvim-web-devicons', -- 6 DEPENDENCIES: OPTIONAL
    },
  }
  use('nvim-tree/nvim-web-devicons')
  use("christoomey/vim-tmux-navigator") -- 7 TMUX NAVIGATOR
  use("nvim-treesitter/nvim-treesitter") -- 8 TREESITTER
  use("p00f/nvim-ts-rainbow") -- 9 TS RAINBOW
  use { -- MASON
    "williamboman/mason.nvim", -- 10 MASON
    "williamboman/mason-lspconfig.nvim", -- 11 MASON CONFIG
    "neovim/nvim-lspconfig" -- 12 VIM CONFIG
  }
  use "hrsh7th/nvim-cmp" -- 13 CMP
  use "hrsh7th/cmp-nvim-lsp" -- 14 CMP LSP
  use "L3MON4D3/LuaSnip" -- 15 SNIPPETS ENGINE
  use "saadparwaiz1/cmp_luasnip" -- 16 LUASNIP
  use "rafamadriz/friendly-snippets" -- 17 BETTER SNIPPETS
  use "hrsh7th/cmp-path" -- 18 FILE PATH
  use "numToStr/Comment.nvim" -- 19 GCC/GCCOMMENT
  use "windwp/nvim-autopairs" -- 20 AUTOPAIR
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} -- 21 BUFFER SWITCH
  use "lewis6991/gitsigns.nvim" -- 22 GIT STATUS
  use "skywind3000/vim-terminal-help" -- 23 TERMINAL HELPER
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', -- 24 TELESCOPE SEARCH
    requires = { {'nvim-lua/plenary.nvim'} } -- 25 DEPENDENCIES: PLENARY
  }
  use({
    "iamcco/markdown-preview.nvim", -- 26 MARKDOWN PREVIEW
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    'glepnir/dashboard-nvim', -- 27 STARTUP DASHBOARD PAGE
    event = 'VimEnter',
    config = function()
      require('plugins.dashboard')
    end,
    requires = {'nvim-tree/nvim-web-devicons'} -- 28 DEPENDENCIES WEB-DEVICONS
  }
  use {"Pocco81/auto-save.nvim"} -- 29 AUTO-SAVE
  use { 'gen740/SmoothCursor.nvim', -- 30 SMOOTH CURSOR
    config = function()
      require('smoothcursor').setup()
    end
  }
  use {'psliwka/vim-smoothie'} -- 31 SMOOTH SCROLLING
  use {'linty-org/key-menu.nvim'} -- KEY-MENU
    use {
        "folke/trouble.nvim",
       -- requires = "kyazdani42/nvim-web-devicons",
    }
  use {
    'huggingface/hfcc.nvim',
    config = function()
      require('hfcc').setup({
        api_token = "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",
        model = "bigcode/starcoder" -- can be a model ID or an http endpoint
      })
    end
  }
  use('alvan/vim-closetag')

  if packer_bootstrap then
    require('packer').sync()
  end
end)

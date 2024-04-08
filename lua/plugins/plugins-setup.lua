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
    use 'folke/tokyonight.nvim' -- 2 THEME
    -- use 'navarasu/onedark.nvim'
    -- use { "catppuccin/nvim", as = "catppuccin" }
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
    -- use("p00f/nvim-ts-rainbow") -- 9 TS RAINBOW
    -- use("HiPhish/nvim-ts-rainbow2")
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
    -- use {'akinsho/bufferline.nvim', tag = "*", }-- 21 BUFFER SWITCH
    use 'romgrk/barbar.nvim' -- 21 BUFFER SWITCH
    use "lewis6991/gitsigns.nvim" -- 22 GIT STATUS
    use "skywind3000/vim-terminal-help" -- 23 TERMINAL HELPER
    use {
        'nvim-telescope/telescope.nvim', -- 24 TELESCOPE SEARCH
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
    use {'emmanueltouzery/key-menu.nvim'} -- KEY-MENU
    use {
        "folke/trouble.nvim",
        -- requires = "kyazdani42/nvim-web-devicons",
    }
    use{'huggingface/llm.nvim'} -- 32 HF AI
    use('alvan/vim-closetag') -- 33 AUTO CLOSETAG
    use('rcarriga/nvim-notify') -- 34 NOTIFY
    use('MunifTanjim/nui.nvim') --35 NUI
    use({ -- 36 REFRESHED UI
        "folke/noice.nvim",
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    })
    use { 'TimUntersberger/neogit', branch = 'nightly', requires = 'nvim-lua/plenary.nvim' } -- 37 GIT MANAGEMENT
    --[[ use {
        'declancm/maximize.nvim', -- 38 MAXIMIZE
        config = function() require('maximize').setup {
           default_keymaps = false -- Enable default keymaps. 
        } end
    } ]]--
    use "lukas-reineke/indent-blankline.nvim" -- 39 INDENT LINE GUIDE
    use "RRethy/vim-illuminate" -- 40 ILLUMINATE USES
    use "MattesGroeger/vim-bookmarks" -- 41 BOOKMARKS EXTENSION
    use "kevinhwang91/nvim-hlslens" -- 42 HLSLENS
    use "dstein64/nvim-scrollview" -- 43 SCROLL BAR 
    use "notomo/gesture.nvim" -- 44 MOUSE GESTURES
    use "famiu/bufdelete.nvim" -- 45 BDELETE ENHANCED
    use { "anuvyklack/windows.nvim", -- 46 WINDOW MANAGEMENT
        requires = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim"
        },
    }
    use "lambdalisue/suda.vim" -- 47 AUTO ROOT
    use "tyru/open-browser.vim" -- 48 OPEN BROWSER
    use "weirongxu/plantuml-previewer.vim" -- 49 PLANTUML PREVIEW OPTIONAL
    use "malbertzard/inline-fold.nvim" -- 50 INLINE FOLD
    use "turbio/bracey.vim"
    if packer_bootstrap then
        require('packer').sync()
    end
end)


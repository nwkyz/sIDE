require'nvim-treesitter.configs'.setup {
    -- CONFIGURE LANGUAGES
    ensure_installed = { "vim", "bash", "c", "cpp", "javascript", "json", "lua", "python", "query", "regex", "html", "css", "markdown", "markdown_inline" },

    highlight = { enable = true },
    indent = { enable = true },

    -- RAINBOW COLOR
    rainbow = {
        enable = true,
        -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = require('ts-rainbow').strategy.global,
    }
}



require'nvim-treesitter.configs'.setup {
    -- CONFIGURE LANGUAGES
    ensure_installed = { "vim", "c", "cpp", "javascript", "json", "lua", "python", "query", "regex", "html", "css", "markdown", "markdown_inline" },

    highlight = { enable = true },
    indent = { enable = true }
}



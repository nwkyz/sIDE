require'nvim-treesitter.configs'.setup {
  -- CONFIGURE LANGUAGES
  ensure_installed = { "vim", "help", "bash", "c", "cpp", "javascript", "json", "lua", "python", "query", "html", "css", "markdown" },

  highlight = { enable = true },
  indent = { enable = true },

  -- RAINBOW COLOR
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}



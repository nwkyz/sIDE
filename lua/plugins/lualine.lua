local function getWords()
  return tostring(vim.fn.wordcount().words)
end

require('lualine').setup {
  options = {
    theme = 'catppuccin'
  },
  sections = {
    lualine_c = {'filesize'},
    lualine_y = {getWords, 'progress'}
  }
}


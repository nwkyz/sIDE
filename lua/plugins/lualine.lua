local function getWords()
  return tostring(vim.fn.wordcount().words)
end

require('lualine').setup {
  options = {
    theme = 'tokyonight'
  },
  sections = {
    lualine_c = {'filesize'},
    lualine_y = {getWords, 'progress'}
  }
}


--[[ local function maximize_status()
    return vim.t.maximized and '   ' or '   '
end ]]--

local function getWords()
    return tostring(vim.fn.wordcount().words)
end

require('lualine').setup {
    options = {
        theme = 'tokyonight',
        disabled_filetypes = { 'packer', 'NvimTree' }
    },
    sections = {
        -- lualine_c = {maximize_status},
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {'encoding', 'filesize', getWords, 'selectioncount'},
        lualine_z = {'location', 'progress'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
}


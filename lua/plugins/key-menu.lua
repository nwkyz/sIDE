local setkey = require('key-menu').set

-- This Vim setting controls the delay before the popup appears. The way it
-- works is, if you have mappings for, say, the key "a" and the key sequence
-- "ab", if you type "a", then Vim waits timeoutlen, and if you don't press
-- another key before that amount of time, then the "a" mapping is executed, but
-- if you press "b" before timeoutlen, then the "ab" mapping is executed.
vim.o.timeoutlen = 300

-- If you use <Space> as your mapping prefix, then this will make the key-menu
-- popup appear in Normal mode, after you press <Space>, after timeoutlen.
setkey('n', '<leader>', {desc='sIDE Functions'})
setkey('n', '<leader>f', {desc='Find'})
setkey('n', '<leader>w', {desc='Window'})
setkey("n", "<leader>ws", {desc='Window - Move'})
setkey("n", "<leader>c", {desc='Config'})
setkey("n", "<leader>ct", {desc='Config - Themes'})
setkey("n", "<leader>ch", {desc='Config - Highlight'})
setkey("n", "<leader>cb", {desc='Config - Scrollbar'})
setkey("n", "<leader>j", {desc='Jump To Tab'})
-- setkey("n", "<leader>i", {desc='Issues'})
-- setkey("n", "<leader>a", {desc='AI'})
setkey("n", "<leader>v", {desc='View'})
setkey("n", "<leader>g", {desc='Git'})
setkey("n", "<leader>o", {desc='Explorer Operations'})
setkey("n", "<leader>m", {desc='Bookmarks'})
setkey("n", "<leader>p", {desc='Previews'})
setkey("n", "<leader>pp", {desc='Previews - PlantUML'})
setkey('n', "g")
setkey("n", "w")
setkey("n", "<leader>u", {desc='Updates'})

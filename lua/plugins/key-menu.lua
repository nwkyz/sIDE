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
setkey('n', '<leader>s', {desc='Split Window'})
setkey("n", "<leader>c", {desc='Config'})
setkey("n", "<leader>j", {desc='Jump To Tab'})
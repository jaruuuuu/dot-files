local keymapper = require('keymapper')
local nnoremap = keymapper.nnoremap -- normal mode
local inoremap = keymapper.inoremap -- insert mode
local vnoremap = keymapper.vnoremap -- visual+select modes

-- open splits to right and below
vim.opt.splitright = true
vim.opt.splitbelow = true

-- close current split
nnoremap('<Leader>vq', '<C-W>q')
vnoremap('<Leader>vq', '<C-W>q')

-- split window with new buffer and move to it
nnoremap('<Leader>vh', ':new<CR><C-W>j:Telescope find_files<CR>')
vnoremap('<Leader>vh', ':new<CR><C-W>j:Telescope find_files<CR>')
nnoremap('<Leader>vv', ':vnew<CR><C-W>l:Telescope find_files<CR>')
vnoremap('<Leader>vv', ':vnew<CR><C-W>l:Telescope find_files<CR>')

-- move to other splits
nnoremap('<Leader>v<Left>',  '<C-W>h')
vnoremap('<Leader>v<Left>',  '<C-W>h')
nnoremap('<Leader>v<Right>', '<C-W>l')
vnoremap('<Leader>v<Right>', '<C-W>l')
nnoremap('<Leader>v<Up>',    '<C-W>k')
vnoremap('<Leader>v<Up>',    '<C-W>k')
nnoremap('<Leader>v<Down>',  '<C-W>j')
vnoremap('<Leader>v<Down>',  '<C-W>j')

-- some notable bindings
-- <C-W> _ -- Max out the height of the current split
-- <C-W> | -- Max out the width of the current split
-- <C-W> = -- Normalize all split sizes
-- <C-W> R -- Swap top/bottom or left/right split
-- <C-W> T -- Break out current window into a new tabview
-- <C-W> o -- Close every window in tabview except current one

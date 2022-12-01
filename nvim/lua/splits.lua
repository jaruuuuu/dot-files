local keymap = require('keymap')
local nnoremap = keymap.nnoremap -- normal mode
local inoremap = keymap.inoremap -- insert mode
local vnoremap = keymap.vnoremap -- visual+select modes

-- open splits to right and below
vim.opt.splitright = true
vim.opt.splitbelow = true

-- close current split
nnoremap('<C-q>', '<C-W>q')
vnoremap('<C-q>', '<C-W>q')

-- split window with new buffer and move to it
nnoremap('<C-_>',  ':new<CR><C-Down>') -- horizontal
vnoremap('<C-_>',  ':new<CR><C-Down>') -- horizontal
nnoremap('<C-\\>', ':vnew<CR><C-Right>') -- vertical
vnoremap('<C-\\>', ':vnew<CR><C-Right>') -- vertical

-- move to other splits
nnoremap('<C-Left>',  '<C-W><C-H>') -- to left
vnoremap('<C-Left>',  '<C-W><C-H>') -- to left
nnoremap('<C-Right>', '<C-W><C-L>') -- to right
vnoremap('<C-Right>', '<C-W><C-L>') -- to right
nnoremap('<C-Up>',    '<C-W><C-K>') -- to above
vnoremap('<C-Up>',    '<C-W><C-K>') -- to above
nnoremap('<C-Down>',  '<C-W><C-J>') -- to below
vnoremap('<C-Down>',  '<C-W><C-J>') -- to below

-- some notable bindings
-- <C-W> _ -- Max out the height of the current split
-- <C-W> | -- Max out the width of the current split
-- <C-W> = -- Normalize all split sizes
-- <C-W> R -- Swap top/bottom or left/right split
-- <C-W> T -- Break out current window into a new tabview
-- <C-W> o -- Close every window in tabview except current one

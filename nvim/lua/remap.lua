-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3)

local keymapper = require('keymapper')
local nnoremap = keymapper.nnoremap -- normal modes
local inoremap = keymapper.inoremap -- insert mode
local vnoremap = keymapper.vnoremap -- visual+select modes

vim.g.mapleader = ' '

-- move around in wrapped lines
nnoremap('<Up>', 'gk')
vnoremap('<Up>', 'gk')
nnoremap('<Down>', 'gj')
vnoremap('<Down>', 'gj')

-- keep register unchanged when pasting over selection
vnoremap('p', '"_dp')
vnoremap('P', '"_dP')

-- coq
inoremap('<Esc>',   [[pumvisible() ? "<C-E><Esc>" : "<Esc>"]], { expr = true })
inoremap('<C-C>',   [[pumvisible() ? "<C-E><C-C>" : "<C-C>"]], { expr = true })
inoremap('<Tab>',   [[pumvisible() ? "<C-N>" : "<Tab>"]],      { expr = true })
inoremap('<S-Tab>', [[pumvisible() ? "<C-P>" : "<BS>"]],       { expr = true })

-- :w with :W too
vim.cmd [[ command W w ]]



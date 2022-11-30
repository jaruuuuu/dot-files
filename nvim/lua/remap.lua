-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
-- https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3)

local keymap = require('keymap')

local nmap = keymap.nmap -- normal mode
local imap = keymap.imap -- insert mode
local vmap = keymap.vmap -- visual+select modes
local smap = keymap.smap -- select mode
local xmap = keymap.xmap -- visual mode
local cmap = keymap.cmap -- command-line mode
local omap = keymap.omap -- operator pernding mode

local nnoremap = keymap.nnoremap -- normal mode
local inoremap = keymap.inoremap -- insert mode
local vnoremap = keymap.vnoremap -- visual+select modes
local snoremap = keymap.snoremap -- select mode
local xnoremap = keymap.xnoremap -- visual mode
local cnoremap = keymap.cnoremap -- command-line mode
local onoremap = keymap.onoremap -- operator pernding mode

nnoremap('<Leader>ff', ':Telescope find_files<CR>')
nnoremap('<Leader>fg', ':Telescope live_grep<CR>')
nnoremap('<Leader>fb', ':Telescope buffers<CR>')
nnoremap('<Leader>fh', ':Telescope help_tags<CR>')

-- in visual mode, paste over selection without changing register
xnoremap('<Leader>p', '\"_dp')
xnoremap('<Leader>P', '\"_dP')


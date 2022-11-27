local nnoremap = require('keymap').nnoremap
local xnoremap = require('keymap').xnoremap

nnoremap('<leader>ff', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fh', '<cmd>Telescope help_tags<cr>')

-- in visual mode, paste over selection without changing register
xnoremap('<leader>p', '\"_dp')
xnoremap('<leader>P', '\"_dP')


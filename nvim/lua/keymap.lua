local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}

    return function(lhs, rhs, opts)
        opts = vim.tbl_extend('force', outer_opts, opts or {})
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind('n', {noremap = false}) -- normal mode
M.imap = bind('i', {noremap = false}) -- insert mode
M.vmap = bind('v', {noremap = false}) -- visual+select modes
M.smap = bind('s', {noremap = false}) -- select mode
M.xmap = bind('x', {noremap = false}) -- visual mode
M.cmap = bind('c', {noremap = false}) -- command-line mode
M.omap = bind('o', {noremap = false}) -- operator pernding mode

M.nnoremap = bind('n') -- normal mode
M.inoremap = bind('i') -- insert mode
M.vnoremap = bind('v') -- visual+select modes
M.snoremap = bind('s') -- select mode
M.xnoremap = bind('x') -- visual mode
M.cnoremap = bind('c') -- command-line mode
M.onoremap = bind('o') -- operator pernding mode

return M


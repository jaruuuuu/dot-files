local function bind(op, outer_opts)
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend('force', {}, outer_opts or {}, opts or {})
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

local M = {}

M.nnoremap = bind('n') -- normal mode
M.vnoremap = bind('v') -- visual+select modes
M.inoremap = bind('i') -- insert mode

M.buf_nnoremap = bind('n', {buffer=0}) -- normal mode
M.buf_vnoremap = bind('v', {buffer=0}) -- visual+select modes
M.buf_inoremap = bind('i', {buffer=0}) -- insert mode

return M

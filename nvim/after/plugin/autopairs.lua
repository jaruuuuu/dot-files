-- https://github.com/windwp/nvim-autopairs

require('nvim-autopairs').setup({
    disable_in_macro = true,
    -- =====================================================
    -- Don't add pairs if it already has a close pair in the
    -- same line
    -- +--------+-------+---------+
    -- | Before | Input | After   |
    -- +--------+-------+---------+
    -- | (  |)) | (     | (  (|)) |
    -- +--------------------------+
    enable_check_bracket_line = true,
    -- =====================================================
    -- =====================================================
    -- Don't add pairs if the next char is alphanumeric
    -- +----------+-------+-----------+
    -- | Before   | Input | After     |
    -- +----------+-------+-----------+
    -- | |foobar  | (     | (|foobar  |
    -- | |.foobar | (     | (|.foobar |
    -- +----------+-------+-----------+
    ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
    -- ignored_next_char = "[%w%.]",
    -- =====================================================
    -- =====================================================
    -- FastWrap
    -- +-------------+--------+-------------+
    -- | Before      | Input  | After       |
    -- +-------------+--------+-------------+
    -- | (|foobar    | <M-E>$ | (|foobar)   |
    -- | (|)(foobar) | <M-E>q | (|(foobar)) |
    -- +-------------+--------+-------------+
    fast_wrap = {},
    -- =====================================================
})

local keymapper = require('keymapper')
local vnoremap = keymapper.vnoremap -- select modes

vnoremap('<Leader>s(', 'di()<Esc>P')
vnoremap('<Leader>s[', 'di[]<Esc>P')
vnoremap('<Leader>s{', 'di{}<Esc>P')
vnoremap('<Leader>s<', 'di<><Esc>P')
vnoremap('<Leader>s"', 'di""<Esc>P')
vnoremap("<Leader>s'", "di''<Esc>P")


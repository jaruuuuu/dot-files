require('plugins')
require('keymap')
require('remap')

-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
--   - vim.o: general settings
--   - vim.wo: window-scoped options
--   - vim.bo: buffer-scoped options
--   - vim.g: global options
--   - vim.opt: aliases global, window, and buffer options

vim.g.nocompatible = false
vim.g.noswapfile = true

-- https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990
--   - `tabstop` is effectively how many columns of whitespace a `\t` is worth.
--   - `shiftwidth` is how many columns of whitespace a "level of indentation" is worth.
--   - Setting `expandtab` means that you never wanna see a `\t` again in your file
--   - `softtabstop` is how many columns of whitespace a `tab` keypress or a `backspace` keypress is worth.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.magic = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartindent = true

vim.opt.number = true -- with relative numbering, show current line number on cursor
vim.opt.relativenumber = true -- relative line numbers
vim.opt.cursorline = true -- highlight line cursor is on
vim.opt.scrolloff = 2 -- keep so many lines above/below the cursor when scrolling

-- https://vim.fandom.com/wiki/Automatically_wrap_left_and_right
vim.opt.whichwrap = vim.o.whichwrap .. ',<,>,[,]'

vim.opt.breakindent = true
vim.opt.breakindentopt = 'shift:4,min:40,sbr'
vim.opt.showbreak = '...'
vim.opt.linebreak = true

-- https://learnvimscriptthehardway.stevelosh.com/chapters/06.html
vim.g.mapleader = ' '

-- https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization

vim.o.updatetime = 100
-- vim.cmd [[
--     autocmd CursorHold,CursorHoldI * lua
--         \ vim.diagnostic.open_float(nil, {focus=false})
-- ]]

vim.cmd [[
  augroup jaru
    autocmd!
    autocmd BufWrite * :%s/\s\+$//e
  augroup end
]]

-- https://vi.stackexchange.com/questions/8757
vim.g.pyindent_open_paren = 'shiftwidth() * 1' -- Indent after an open paren
vim.g.pyindent_nested_paren = 'shiftwidth() * 1' -- Indent after a nested paren
vim.g.pyindent_continue = 'shiftwidth() * 1' -- Indent for a continuation line

vim.g.rainbow_active = 1


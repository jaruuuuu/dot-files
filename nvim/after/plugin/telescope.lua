local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup{
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
    },
    -- https://github.com/nvim-telescope/telescope.nvim/wiki/Extensions
    extensions = {
        -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
        }
    },
    pickers = {
        find_files = {
            disable_devicons = true
        },
        live_grep = {
            disable_devicons = true
        },
        colorscheme = {
            enable_preview = true
        }
    },
}

telescope.load_extension('fzf')

local keymapper = require('keymapper')
local nnoremap = keymapper.nnoremap -- normal modes

nnoremap('<Leader>fF', builtin.find_files)
nnoremap('<Leader>ff', builtin.buffers)
nnoremap('<Leader>tF', ':tabe<CR>:Telescope find_files<CR>')
nnoremap('<Leader>tf', ':tabe<CR>:Telescope buffers<CR>')

nnoremap('<Leader>f?', builtin.live_grep)
nnoremap('<Leader>f/', builtin.current_buffer_fuzzy_find)

nnoremap('<Leader>fo', builtin.vim_options)
nnoremap('<Leader>fc', builtin.colorscheme)
nnoremap('<Leader>fk', builtin.keymaps)

nnoremap('<Leader>fd', builtin.diagnostics)

nnoremap('<Leader>fv', builtin.lsp_definitions) -- variable declarations, etc.
nnoremap('<Leader>fV', builtin.lsp_type_definitions)

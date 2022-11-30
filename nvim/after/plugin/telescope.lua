local telescope = require('telescope')

telescope.setup{
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
        }
    },
}

telescope.load_extension('fzf')

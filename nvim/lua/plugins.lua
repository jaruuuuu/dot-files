-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[ packadd packer.nvim ]]

-- run :PackerSync on :w
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(
    function(use)
        -- Packer can manage itself
        use { 'wbthomason/packer.nvim' }
        use { 'nvim-lua/plenary.nvim' }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install')
                    .update({ with_sync = true })
                ts_update()
            end
        }

        use { 'neovim/nvim-lspconfig' }

        use { 'nvim-telescope/telescope.nvim', tag = '0.1.x' }
        use { 'nvim-telescope/telescope-symbols.nvim', run = ':Telescope symbols' }
        use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

        use { 'ms-jpq/coq_nvim', branch = 'coq' }
        use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

        use { 'luochen1990/rainbow' }

        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }

        use { 'simrat39/rust-tools.nvim' }

        -- colorschemes
        use { 'catppuccin/nvim', as='catppuccin' }
    end
)


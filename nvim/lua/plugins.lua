-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[
    packadd packer.nvim
]]

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

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install')
                    .update({ with_sync = true })
                ts_update()
            end
        }

        use { 'neovim/nvim-lspconfig' }

        use { 'nvim-lua/plenary.nvim' }
        use { 'nvim-telescope/telescope.nvim', tag = '0.1.x' }
        use { 'nvim-telescope/telescope-symbols.nvim', run = ':Telescope symbols' }

        use { 'ms-jpq/coq_nvim', branch = 'coq' }
        use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

        use { 'luochen1990/rainbow' }
        use { 'chun-yang/auto-pairs' }

        use { 'simrat39/rust-tools.nvim' }

        -- colorschemes
        use { 'catppuccin/nvim', as='catppuccin' }
        use { 'ackyshake/spacegray.vim' }
        use { 'ajmwagar/vim-deus' }
        use { 'alessandroyorba/alduin' }
        use { 'alessandroyorba/sierra' }
        use { 'altercation/vim-colors-solarized' }
        use { 'aonemd/kuroi.vim' }
        use { 'arcticicestudio/nord-vim' }
        use { 'arzg/vim-colors-xcode' }
        use { 'ayu-theme/ayu-vim' }
        use { 'bluz71/vim-moonfly-colors' }
        use { 'bluz71/vim-nightfly-colors' }
        use { 'challenger-deep-theme/vim', as='vim-challenger-deep-theme' }
        use { 'chriskempson/vim-tomorrow-theme' }
        use { 'christianchiarulli/nvcode-color-schemes.vim' }
        use { 'cocopon/iceberg.vim' }
        use { 'connorholyday/vim-snazzy' }
        use { 'cormacrelf/vim-colors-github' }
        use { 'crusoexia/vim-monokai', as='vim-monokai-crusoexia' }
        use { 'danilo-augusto/vim-afterglow' }
        use { 'dikiaap/minimalist' }
        use { 'doums/darcula' }
        use { 'dracula/vim', as='vim-dracula' }
        use { 'drewtempelmeyer/palenight.vim' }
        use { 'dylanaraps/wal.vim' }
        use { 'edeneast/nightfox.nvim' }
        use { 'embark-theme/vim', as='vim-embark-theme' }
        use { 'everblush/everblush.vim' }
        use { 'fenetikm/falcon' }
        use { 'folke/tokyonight.nvim' }
        use { 'franbach/miramare' }
        use { 'freeo/vim-kalisi' }
        use { 'frenzyexists/aquarium-vim' }
        use { 'fxn/vim-monochrome' }
        use { 'google/vim-colorscheme-primary' }
        use { 'gosukiwi/vim-atom-dark' }
        use { 'haishanh/night-owl.vim' }
        use { 'hzchirs/vim-material' }
        use { 'jacoborus/tender.vim' }
        use { 'jaredgorski/spacecamp' }
        use { 'jdkanani/vim-material-theme' }
        use { 'jeffkreeftmeijer/vim-dim' }
        use { 'jnurmine/zenburn' }
        use { 'jonathanfilip/vim-lucius' }
        use { 'joshdick/onedark.vim' }
        use { 'jpo/vim-railscasts-theme' }
        use { 'junegunn/seoul256.vim' }
        use { 'kaicataldo/material.vim' }
        use { 'keitanakamura/neodark.vim' }
        use { 'kristijanhusak/vim-hybrid-material' }
        use { 'kyoz/purify' }
        use { 'lifepillar/vim-gruvbox8' }
        use { 'lifepillar/vim-solarized8' }
        use { 'liuchengxu/space-vim-dark' }
        use { 'lokaltog/vim-distinguished' }
        use { 'lokaltog/vim-monotone' }
        use { 'luisiacc/gruvbox-baby' }
        use { 'mcchrish/zenbones.nvim' }
        use { 'morhetz/gruvbox' }
        use { 'nanotech/jellybeans.vim' }
        use { 'nlknguyen/papercolor-theme' }
        use { 'noahfrederick/vim-hemisu' }
        use { 'noahfrederick/vim-noctu' }
        use { 'olimorris/onedarkpro.nvim' }
        use { 'owickstrom/vim-colors-paramount' }
        use { 'patstockwell/vim-monokai-tasty' }
        use { 'phanviet/vim-monokai-pro' }
        use { 'pineapplegiant/spaceduck' }
        use { 'preservim/vim-colors-pencil' }
        use { 'rafi/awesome-vim-colorschemes' }
        use { 'rainglow/vim', as='vim-rainglow' }
        use { 'rakr/vim-one' }
        use { 'raphamorim/lucario' }
        use { 'rebelot/kanagawa.nvim' }
        use { 'rhysd/vim-color-spring-night' }
        use { 'rigellute/rigel' }
        use { 'rigellute/shades-of-purple.vim' }
        use { 'robertmeta/nofrils' }
        use { 'romainl/apprentice' }
        use { 'rose-pine/neovim' }
        use { 'sainnhe/edge' }
        use { 'sainnhe/everforest' }
        use { 'sainnhe/gruvbox-material' }
        use { 'sainnhe/sonokai' }
        use { 'savq/melange' }
        use { 'shaunsingh/nord.nvim' }
        use { 'sickill/vim-monokai', as='vim-monokai-sickill' }
        use { 'sjl/badwolf' }
        use { 'sonph/onehalf' }
        use { 'srcery-colors/srcery-vim' }
        use { 'tlhr/anderson.vim' }
        use { 'tomasiser/vim-code-dark' }
        use { 'tomasr/molokai' }
        use { 'tpope/vim-vividchalk' }
        use { 'trevordmiller/nova-vim' }
        use { 'tyrannicaltoucan/vim-deep-space' }
        use { 'tyrannicaltoucan/vim-quantum' }
        use { 'w0ng/vim-hybrid' }
        use { 'wadackel/vim-dogrun' }
        use { 'wuelnerdotexe/vim-enfocado' }
        use { 'zeis/vim-kolor' }
    end
)


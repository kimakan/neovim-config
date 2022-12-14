

vim.cmd("packadd packer.nvim")
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Colorschemes
    use({ 'sainnhe/everforest',
        as = 'everforest',
    })
    use({ 'navarasu/onedark.nvim',
        as = 'onedark',
    })
    use({ "ellisonleao/gruvbox.nvim",
        as = 'gruvbox'})
    --use({ 'olimorris/onedarkpro.nvim', 
    --    as = 'onedarkpro'
    --})
    use({ 'rose-pine/neovim',
        as = 'rose-pine',
    })

    use('vim-airline/vim-airline')

    use('nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' })

    use("numToStr/FTerm.nvim")

    use('ThePrimeagen/harpoon')

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            --{'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

end)




vim.cmd("packadd packer.nvim")
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 'navarasu/onedark.nvim',
        as = 'onedark',
    })
    use({ "ellisonleao/gruvbox.nvim",
        as = 'gruvbox'})

    use('vim-airline/vim-airline')

    use('nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' })

    use("numToStr/FTerm.nvim")

    use('ThePrimeagen/harpoon')

    use({'robitx/gp.nvim',
        config = function()
        require('gp').setup()
        -- or setup with your own config (see Install > Configuration in Readme)
        -- require("gp").setup(config)
        -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
    end,
    })

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


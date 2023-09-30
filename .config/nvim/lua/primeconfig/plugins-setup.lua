-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use("szw/vim-maximizer") -- maximizes and restores current window

    -- colortheme
    use {'nyoom-engineering/oxocarbon.nvim'}
    use({'rose-pine/neovim', as = 'rose-pine'})

    -- essential plugins
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- using telescope (fussy finder)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- icons 
    use("nvim-tree/nvim-web-devicons")

    -- for the statusbar at bottom
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- bufferline at top for pages and stuff
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- setting up lsp and code compilations stuff
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- toggleterm for terminal inside of neovim
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    end}

    -- autoparirs for pairs to automate
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- neotree for file tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                's1n7ax/nvim-window-picker',
                version = '2.*',
                config = function()
                    require 'window-picker'.setup({
                        filter_rules = {
                            include_current_win = false,
                            autoselect_one = true,
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                    })
                end,
            },
        }
    }

    -- making it transparent
    use('xiyaowong/transparent.nvim')

end)

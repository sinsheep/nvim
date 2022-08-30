local fn = vim.fn
local conf = require('core.config')

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then

    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here

    use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
    use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
    use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
    use({ "numToStr/Comment.nvim", config = conf.comment })
    use({ "JoosepAlviste/nvim-ts-context-commentstring" })
    use({ "kyazdani42/nvim-web-devicons" })
    use({
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
            })
        end
    })
    use({ "kyazdani42/nvim-tree.lua"})
    use({ "akinsho/bufferline.nvim" })
    use({ "nvim-lualine/lualine.nvim" })
    -- use({
        --     'glepnir/galaxyline.nvim',
        --     branch = 'main',
        --     requires = 'kyazdani42/nvim-web-devicons',
        -- })
        use({ "moll/vim-bbye" ,cmd='Bdelete'})
        use({ "ahmedkhalf/project.nvim",
        config=function ()
            require("project_nvim").setup {}
        end})
        use({ "lewis6991/impatient.nvim"})
        use({ "lukas-reineke/indent-blankline.nvim" })
        use {
            'goolord/alpha-nvim',
            config = function ()
                require'alpha'.setup(require'alpha.themes.dashboard'.config)
            end
        }
        -- use("folke/which-key.nvim")


        -- cmp plugins
        use({ "hrsh7th/nvim-cmp"}) -- The completion plugin
        use({ "hrsh7th/cmp-buffer" }) -- buffer completions
        use({ "hrsh7th/cmp-path" }) -- path completions
        use({ "saadparwaiz1/cmp_luasnip"}) -- snippet completions
        use({ "hrsh7th/cmp-nvim-lsp"})
        use({ "hrsh7th/cmp-nvim-lua"})

        -- snippets
        use({ "L3MON4D3/LuaSnip" }) --snippet engine
        use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

        -- LSP
        use({ "neovim/nvim-lspconfig" }) -- enable LSP
        -- use({ "williamboman/nvim-lsp-installer" }) -- simple to use language server installer
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        }
        -- use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
        use({
            "glepnir/lspsaga.nvim",
            branch = "main",
        })

        use { "ellisonleao/gruvbox.nvim" }
        -- Telescope
        use({ "nvim-telescope/telescope.nvim"})

        -- Treesitter
        use({
            "nvim-treesitter/nvim-treesitter",
            config = conf.nvim_treesitter
        })
        use({ 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' })

        -- vim-dap
        -- use({"mfussenegger/nvim-dap"})
        -- use { "rcarriga/nvim-dap-ui"}

        -- trouble 
        use {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require("trouble").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end,
            cmd='Trouble'
        }
        -- formatters
        use { 'mhartington/formatter.nvim' }
        -- Git
        use({"lewis6991/gitsigns.nvim"})

        use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
        -- hop
        use {
            'phaazon/hop.nvim',
            branch = 'v2', -- optional but strongly recommended
            config = function()
                -- you can configure Hop the way you like here; see :h hop-config
                require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
            end
        }
        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if PACKER_BOOTSTRAP then
            require("packer").sync()
        end
    end)

require("utils")

return require("packer").startup(function(use)
    use({"nvim-telescope/telescope-file-browser.nvim"})

 		use "rebelot/kanagawa.nvim"

    use({
        "windwp/nvim-ts-autotag",
        config = function() require('nvim-ts-autotag').setup() end
    })

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use({
        "fgheng/winbar.nvim",
        config = function()
            require('winbar').setup({
                enabled = true,

                show_file_path = true,
                show_symbols = true,

                colors = {
                    path = '', -- You can customize colors like #c946fd
                    file_name = '',
                    symbols = ''
                },

                icons = {
                    file_icon_default = '',
                    seperator = '>',
                    editor_state = '●',
                    lock_icon = ''
                },

                exclude_filetype = {
                    'help', 'startify', 'dashboard', 'packer', 'neogitstatus',
                    'NvimTree', 'Trouble', 'alpha', 'lir', 'Outline',
                    'spectre_panel', 'toggleterm', 'qf'
                }
            })
        end
    })

    use 'ggandor/lightspeed.nvim'

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {
                show_current_context = true,
                filetype_exclude = {"dashboard"}
            }
        end
    })

    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use({
        "hrsh7th/nvim-cmp",
        config = function() require("plugins.nvim-cmp") end
    })

    use "andrejlevkovitch/vim-lua-format"

    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function() require("nvim-surround").setup({}) end
    })

    use {
        "folke/which-key.nvim",
        config = function() require("which-key").setup {} end
    }

    --
    --- IMPORTANT: .tsx and .jsx rendering very poor without Treesitter!
    use({
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require'nvim-treesitter.configs'.setup {
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                autotag = {enable = true}
            }
        end
    })

    use({
        "nvim-treesitter/nvim-treesitter-context",
        config = function() require'treesitter-context'.setup {} end
    })

    use({
        "prettier/vim-prettier",
        setup = function() require("plugins.prettier") end
    })

    use({
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end
    })

    use({
        "neovim/nvim-lspconfig",
        config = function() require("plugins.nvim-lspconfig") end
    })

    use({
        "ahmedkhalf/project.nvim",
        config = function() require("project_nvim").setup() end
    })

    use("wbthomason/packer.nvim")

    use({
        "kyazdani42/nvim-tree.lua",
        requires = {"kyazdani42/nvim-web-devicons"},
        tag = "nightly",
        config = function() require("plugins.nvim-tree") end
    })

    use("nvim-lua/plenary.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        config = function() require("plugins.telescope") end
    })

    use("tpope/vim-commentary")

    use("kyazdani42/nvim-web-devicons")

    use({
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true},
        config = function() require("plugins.lualine") end
    })

    use({
        "glepnir/dashboard-nvim",
        config = function() require("plugins.dashboard") end
    })

    use("tpope/vim-fugitive")
end)

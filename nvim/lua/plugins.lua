require("utils")

return require("packer").startup(function(use)
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
                }
            }
        end
    })

    use({
        "prettier/vim-prettier",
        setup = function() require("plugins.prettier") end
    })

    use({
        "TimUntersberger/neogit",
        config = function() require("plugins.neogit") end
    })

    use({
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end
    })

    use({
        "neovim/nvim-lspconfig",
        config = function() require("plugins.nvim-lspconfig") end
    })

    use("justinmk/vim-sneak")

    use({
        "ahmedkhalf/project.nvim",
        config = function() require("plugins.project") end
    })

    use({
        "nanozuki/tabby.nvim",
        config = function() require("plugins.tabby") end
    })

    use({
        "echasnovski/mini.nvim",
        config = function() require("plugins.mini") end
    })

    use("folke/tokyonight.nvim")

    use({"RRethy/vim-illuminate"})

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

    use("jiangmiao/auto-pairs")

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

    use({
        "rebelot/kanagawa.nvim",
        config = function() require("plugins.kanagawa") end
    })

    use("lewis6991/gitsigns.nvim")

    use("tpope/vim-fugitive")
end)

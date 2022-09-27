require("utils")

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.nvim-lspconfig")
		end,
	})

	use({
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter")
		end,
	})

	use("justinmk/vim-sneak")

	use({
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				require("telescope").load_extension("projects"),
			})
		end,
	})

	use({
		"nanozuki/tabby.nvim",
		config = function()
			require("plugins.tabby")
		end,
	})

	use({
		"echasnovski/mini.nvim",
		config = function()
			require("plugins.mini")
		end,
	})

	use("folke/tokyonight.nvim")

	use({
		"RRethy/vim-illuminate",
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("plugins.toggleterm")
		end,
	})

	use("wbthomason/packer.nvim")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		tag = "nightly",
		config = function()
			require("plugins.nvim-tree")
		end,
	})

	use("nvim-lua/plenary.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		config = function()
			require("plugins.telescope")
		end,
	})

	use({ "prettier/vim-prettier", run = "yarn install --frozen-lockfile --production" })

	use("tpope/vim-commentary")

	use("jiangmiao/auto-pairs")

	use("kyazdani42/nvim-web-devicons")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins.lualine")
		end,
	})

	use({
		"glepnir/dashboard-nvim",
		config = function()
			require("plugins.dashboard")
		end,
	})

	use({
		"rebelot/kanagawa.nvim",
		config = function()
			require("plugins.kanagawa")
		end,
	})

	use("lewis6991/gitsigns.nvim")

	use("tpope/vim-fugitive")
end)

require("utils")

return require("packer").startup(function(use)
		 use({
			 "nvim-treesitter/nvim-treesitter",
			 config = function()
				 require'nvim-treesitter.configs'.setup {
					highlight = {
						enable = true,
						-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
						-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
						-- Using this option may slow down your editor, and you may see some duplicate highlights.
						-- Instead of true it can also be a list of languages
						additional_vim_regex_highlighting = false,
					},
			}
			 end,
		 })

		 use({
				"prettier/vim-prettier",
				setup = function()
					vim.cmd [[
					let g:prettier#config#print_width = 'auto'
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#parser = ''
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'false'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
					]]
				end,
		}) 

	use({
		"TimUntersberger/neogit",
		config = function()
			require("plugins.neogit")
		end,
	})

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

	use("justinmk/vim-sneak")

	use({
		"ahmedkhalf/project.nvim",
		config = function()
			require("plugins.project")
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

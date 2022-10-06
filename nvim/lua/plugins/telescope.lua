require("utils")

options = {
	defaults = { file_ignore_patterns = { "node_modules" } },
	extensions = {
		file_browser = {
			theme = "ivy",
		},
		project = {
			base_dirs = {
				"~/Developer",
			}
		},
	}
}

require("telescope").setup(options)
require("telescope").load_extension "file_browser"
require("telescope").load_extension "projects"

--
--- Strings
keymap("n", "<leader>fs", ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<CR>")

--
--- Search in buffer
keymap("n", "/", ":lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_ivy({}))<CR>")

--
--- Git
keymap("n", "<leader>gs", ":lua require'telescope.builtin'.git_status(require('telescope.themes').get_ivy({}))<CR>")
keymap("n", "<leader>gb", ":lua require'telescope.builtin'.git_branches(require('telescope.themes').get_ivy({}))<CR>")
keymap("n", "<leader>gc", ":lua require'telescope.builtin'.git_commits(require('telescope.themes').get_ivy({}))<CR>")

keymap("n", "<leader>ga", ":Git add .<CR>")
keymap("n", "<leader>gg", ":Git commit<CR><CR>")
keymap("n", "<leader>gp", ":Git push<CR>")

--
--- Buffers
keymap("n", "<leader>j", ":lua require'telescope.builtin'.buffers(require('telescope.themes').get_ivy({}))<CR>")

--
--- Search history
keymap("n", "<leader>h", ":lua require'telescope.builtin'.search_history(require('telescope.themes').get_ivy({}))<CR>")

--
--- LSP
keymap("n", "<leader>t", ":lua require'telescope.builtin'.treesitter(require('telescope.themes').get_ivy({}))<CR>")

--
--- Files

-- Find files
keymap("n", "<leader><leader>", "<cmd>Telescope find_files theme=ivy<CR>")
keymap("n", "<leader>l", "<cmd>Telescope file_browser<CR>")

--
--- Projects

-- Find projects
keymap("n", "<leader>fp", ":Telescope projects theme=ivy<CR>")

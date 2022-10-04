require("utils")

options = {
	defaults = { file_ignore_patterns = { "node_modules" } }
}

require("telescope").setup(options)


--
--- Strings
keymap("n", "<leader>fs", ":lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<CR>")

--
--- Git
keymap("n", "<leader>gs", ":lua require'telescope.builtin'.git_status(require('telescope.themes').get_ivy({}))<CR>")
keymap("n", "<leader>gb", ":lua require'telescope.builtin'.git_branches(require('telescope.themes').get_ivy({}))<CR>")
keymap("n", "<leader>gcl", ":lua require'telescope.builtin'.git_commits(require('telescope.themes').get_ivy({}))<CR>")

keymap("n", "<leader>ga", ":Git add .<CR>")
keymap("n", "<leader>gcc", ":Git commit -m ")
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

--
--- Projects

-- Find projects
keymap("n", "<leader>fp", ":Telescope projects theme=ivy<CR>")

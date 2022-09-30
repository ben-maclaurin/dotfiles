require("utils")

options = {
	defaults = { file_ignore_patterns = { "node_modules" } }
}

require("telescope").setup(options)

keymap("n", "<leader>fu", ":e<CR>")
keymap("n", "<leader>fs", ":so<CR>")
keymap("n", "<leader><leader>", "<cmd>Telescope find_files<CR>")
keymap("n", "<leader>fw", ":w<CR>")
keymap("n", "<leader>fq", ":wq<CR>")
keymap("n", "<leader>fl", "/")

keymap("n", "<leader>fp", ":Telescope projects<CR>")

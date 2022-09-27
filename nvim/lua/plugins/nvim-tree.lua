require("nvim-tree").setup()
require("utils")

keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>")
keymap("n", "<leader>nn", ":NvimTreeToggle<CR>")

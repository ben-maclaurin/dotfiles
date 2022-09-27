require("nvim-tree").setup()

local options = { noremap = true, silent = true }
local key = vim.api.nvim_set_keymap

key("n", "<leader>nf", ":NvimTreeFindFile<CR>", options)
key("n", "<leader>nn", ":NvimTreeToggle<CR>", options)

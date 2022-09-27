defaults = { file_ignore_patterns = { "node_modules" } }

local options = { noremap = true, silent = true }
local key = vim.api.nvim_set_keymap

key("n", "<leader>fu", ":e<CR>", options)
key("n", "<leader>fs", ":so<CR>", options)
key("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", options)
key("n", "<leader>fw", ":w<CR>", options)
key("n", "<leader>fq", ":wq<CR>", options)
key("n", "<leader>fl", "/", options)

key("n", "<leader>fp", ":Telescope projects<CR>", options)

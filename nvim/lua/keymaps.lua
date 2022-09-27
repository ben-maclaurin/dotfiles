require("utils")

keymap("i", "jk", "<ESC>")
keymap("i", "<M-#>", "#")

keymap("n", "<C-l>", "20zl")
keymap("n", "<C-h>", "20zh")

-- Leader
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Page navigation [ Ctrl ]
keymap("n", "<C-j>", "<PageDown>")
keymap("n", "<C-k>", "<PageUp>")

-- Neovim [ V ]
keymap("n", "<leader>vv", ":e ~/.dotfiles/nvim<CR>")
keymap("n", "<leader>vs", ":PackerSync<CR>")
keymap("n", "<leader>vi", ":PackerInstall<CR>")

-- Visual mode 
keymap("n", "vv", "<S-v>")

-- Dotfile configuration [ D ]
keymap("n", "<leader>da", ":e ~/.dotfiles/alacritty/alacritty.yml<CR>")

-- Prettier [ P ]
keymap("n", "<leader>p", ":Prettier<CR>")

-- Window [ W ]
keymap("n", "<leader>wl", "<C-w>l")
keymap("n", "<leader>wh", "<C-w>h")
keymap("n", "<leader>wj", "<C-w>j")
keymap("n", "<leader>wk", "<C-w>k")
keymap("n", "<leader>wv", ":vs<CR>")
keymap("n", "<leader>wq", ":exit<CR>")
keymap("n", "<leader>q", ":qa!<CR>")

-- Yank to system clipboard [ Y ]
keymap("v", "<leader>y", '"+y"')

-- Sneak
keymap("", "f", "<Plug>Sneak_s")
keymap("", "F", "<Plug>Sneak_S")

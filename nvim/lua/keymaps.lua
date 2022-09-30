require("utils")

-- Escape from terminal
keymap("t", "jk", "<C-\\><C-n>")

-- Remap j and k keys to escape insert mode.
keymap("i", "jk", "<ESC>")

-- Neovim support for hashtags.
keymap("i", "<M-#>", "#")

-- Horizontal page scrolling. 
keymap("n", "<C-l>", "20zl")
keymap("n", "<C-h>", "20zh")

-- 
--- Leader key

keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Smooth scrolling
keymap("", "{", "{zz")
keymap("", "}", "}zz")

-- Find cursor
keymap("n", "<Tab>", "zz")

--  
--- Page Down/Up

keymap("n", "<C-j>", "<PageDown>zz")
keymap("n", "<C-k>", "<PageUp>zz")

--
--- Neovim

keymap("n", "<leader>vs", ":PackerSync<CR>")
keymap("n", "<leader>vi", ":PackerInstall<CR>")

-- Quickly select entire line in visual mode. 
keymap("n", "vv", "<S-v>")

-- 
--- Dotfile management

keymap("n", "<leader>fd", ":e ~/dotfiles<CR>")

--
--- Prettier 

keymap("n", "<leader>p", ":Prettier<CR>")

keymap("n", "'", "`")

-- keymap("n", "<S-a>", "$")
-- keymap("n", "<S-i>", "0")

-- 
--- Window management

-- Focus window to immediate right.
keymap("n", "<leader>wl", "<C-w>l")

-- Focus window to immediate left.
keymap("n", "<leader>wh", "<C-w>h")

-- Focus window immediately below.
keymap("n", "<leader>wj", "<C-w>j")

-- Focus window immediately above.
keymap("n", "<leader>wk", "<C-w>k")

-- Create a vertical split (50/50).
keymap("n", "<leader>wv", ":vs<CR>")

-- Create a horizontal split (50/50).
keymap("n", "<leader>ww", ":sp<CR>")

-- Close the currently active window.
keymap("n", "<leader>wq", ":exit<CR>")

-- Close the currently active window.
keymap("n", "<leader>w=", ":vertical resize +10<CR>")
keymap("n", "<leader>w-", ":vertical resize -10<CR>")

-- Quit Neovim.
keymap("n", "<leader>q", ":qa!<CR>")

-- 
--- System clipboard

keymap("v", "<leader>y", '"+y"')

--
--- System utility

-- Opens the web browser.
keymap("n", "<leader>ow", ":!open /Applications/Firefox.app<CR><CR>")

-- Slack
keymap("n", "<leader>os", ":!open /Applications/Slack.app<CR><CR>")

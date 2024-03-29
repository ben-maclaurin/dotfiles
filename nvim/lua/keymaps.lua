require("utils")

-- Disable visual select (training only)
keymap("n", "v", "<ESC>")
keymap("n", "<S-v>", "<ESC>")

-- Escape from terminal
keymap("t", "<Esc>", "<C-\\><C-n>")
keymap("n", "<leader>;", ":e term<CR>")

-- Remap j and k keys to escape insert mode.
-- keymap("i", "jk", "<ESC>")

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

keymap("n", "<C-i>", "<C-i>")

--
--- Neovim

keymap("n", "<leader>vs", ":PackerSync<CR>")
keymap("n", "<leader>vi", ":PackerInstall<CR>")

-- 
--- Dotfile management

keymap("n", "<leader>f.", ":e ~/dotfiles/README.md<CR>:Dashboard<CR><cmd>Telescope find_files theme=ivy<CR>")

--
--- Prettier 

keymap("n", "<leader>p", ":Prettier<CR>")

keymap("n", "'", "`")

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
-- keymap("n", "<leader>q", ":qa!<CR>")

-- 
--- System clipboard

keymap("v", "<leader>y", '"+y"')

--
--- System utility

-- Opens the web browser.
keymap("n", "<leader>ow", ":!open /Applications/Firefox.app<CR><CR>")

-- Opens the Figma.
keymap("n", "<leader>of", ":!open /Applications/Figma.app<CR><CR>")

-- Slack
keymap("n", "<leader>os", ":!open /Applications/Slack.app<CR><CR>")

--
--- Dashboard
keymap("n", "<leader>d", ":Dashboard<CR>")

-- 
--- Buffers

-- Close all buffers except current 
keymap("n", "<leader>q", ":w <bar> %bd! <bar> e# <bar> bd# <CR><CR>")


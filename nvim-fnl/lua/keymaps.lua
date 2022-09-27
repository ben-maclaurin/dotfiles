-- :fennel:1664284901
local function keymap(mode, lhs, rhs)
  _G.assert((nil ~= rhs), "Missing argument rhs on keymaps.fnl:1")
  _G.assert((nil ~= lhs), "Missing argument lhs on keymaps.fnl:1")
  _G.assert((nil ~= mode), "Missing argument mode on keymaps.fnl:1")
  return vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true, silent = true})
end
keymap("i", "jk", "<ESC>")
keymap("i", "<M-#>", "#")
keymap("n", "<C-l>", "20zl")
keymap("n", "<C-h>", "20zh")
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.localleader = " "
keymap("", "j", "jzz")
keymap("", "k", "kzz")
keymap("n", "<C-j>", "<PageDown>zz")
keymap("n", "<C-k>", "<PageUp>zz")
keymap("n", "<leader>vv", ":e ~/dotfiles/nvim<CR>")
keymap("n", "<leader>vs", ":PackerSync<CR>")
return keymap("n", "<leader>vi", ":PackerInstall<CR>")
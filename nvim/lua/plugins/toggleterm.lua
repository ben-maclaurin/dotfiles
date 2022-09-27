local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
local tinyclean = Terminal:new({ cmd = "tinyclean 3000", hidden = true, direction = "float" })
local hop = Terminal:new({
	cmd = "hop",
	direction = "float",
	float_opts = { width = 999999, height = 99999, border = "curved" },
})

function _lazygit_toggle()
	lazygit:toggle()
end

function _tinyclean_toggle()
	tinyclean:toggle()
end

function _hop_toggle()
	hop:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>;c", "<cmd>lua _tinyclean_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fp", "<cmd>lua _hop_toggle()<CR>", { noremap = true, silent = true })

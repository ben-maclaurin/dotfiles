require("utils")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
	lazygit:toggle()
end

keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>")

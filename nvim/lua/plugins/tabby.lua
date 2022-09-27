require("tabby.tabline").use_preset("active_wins_at_tail", {
	theme = {
		fill = "TabLineFill",
		head = "TabLine",
		current_tab = "TabLineSel", 
		tab = "TabLine",
		win = "TabLine", 
		tail = "TabLine", 
	},
	tab_name = {
		name_fallback = "function({tabid}), return a string",
	},
	buf_name = {
		mode = "'unique'|'relative'|'tail'|'shorten'",
	},
})

require("tabby").setup({})

local options = { noremap = true, silent = true }
local key = vim.api.nvim_set_keymap

key("n", "<leader>to", ":$tabnew<CR>", options)
key("n", "<leader>tn", ":tabn<CR>", options)
key("n", "<leader>tp", ":tabp<CR>", options)
key("n", "<leader>tq", ":tabclose<CR>", options)
key("n", "<leader>tmp", ":-tabmove<CR>", options)
key("n", "<leader>tmn", ":+tabmove<CR>", options)

key("n", "<leader>bn", ":bnext<CR>", options)
key("n", "<leader>bp", ":bprevious<CR>", options)
key("n", "<leader>bq", ":bclose<CR>", options)

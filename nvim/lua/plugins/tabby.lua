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
require("utils")

keymap("n", "<leader>to", ":$tabnew<CR>")
keymap("n", "<leader>tn", ":tabn<CR>")
keymap("n", "<leader>tp", ":tabp<CR>")
keymap("n", "<leader>tq", ":tabclose<CR>")
keymap("n", "<leader>tmp", ":-tabmove<CR>")
keymap("n", "<leader>tmn", ":+tabmove<CR>")

keymap("n", "<leader>bn", ":bnext<CR>")
keymap("n", "<leader>bp", ":bprevious<CR>")
keymap("n", "<leader>bq", ":bclose<CR>")

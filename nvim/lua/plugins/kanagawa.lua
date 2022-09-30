local colors = require("kanagawa.color")

require("kanagawa").setup({
	statementStyle = { bold = false },
})

vim.cmd("set background=dark")
vim.cmd("colorscheme kanagawa")

require("utils")

vim.cmd [[ set nowrap! ]]

--
--- Color

option("syntax", "on")
option("termguicolors", true)
vim.cmd [[ colorscheme kanagawa ]]

--
--- Line numbers

option("relativenumber", true)
option("rnu", true)
option("number", true)

--
--- Indentation

option("shiftwidth", 2)
option("autoindent", true)
option("smartindent", true)
option("tabstop", 2)
option("softtabstop", 2)
option("smarttab", true)

option("mouse", "a")

vim.cmd [[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END
]]


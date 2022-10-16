require("utils")

vim.cmd [[ set nowrap! ]]

-- This hides the command line for a cleaner look and feel. 
vim.o.ch = 0

--
--- Cursor line
vim.cmd("set cursorline")

--
--- Neovide

-- The following are Neovide-sepcific options. 

vim.cmd("let g:neovide_transparency = 1")
vim.cmd("let g:transparency = 1")
vim.cmd("let g:neovide_cursor_animation_length=0")
-- vim.cmd("let g:neovide_background_color = '#181818'.printf('%x', float2nr(255 * g:transparency))")

-- Set the font to JetBrains Mono and size 17.
vim.opt.guifont = {"JetBrainsMonoNL NFM", ":h17"}
-- vim.opt.guifont = {"BlexMono Nerd Font Mono", ":h17"}
-- vim.opt.guifont = {"Iosevka", ":h19"}

-- vim.cmd("let g:neovide_cursor_animation_length=0")

--
--- Color

option("syntax", "on")
option("termguicolors", true)

--
--- Line numbers

option("relativenumber", true)
option("rnu", true)
option("number", true)

-- Hide line numbers in terminal windows
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")

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


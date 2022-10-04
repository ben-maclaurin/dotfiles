local default_colors = require("kanagawa.colors").setup()

local overrides = {
    DashboardHeader = { fg = default_colors.oniViolet, bg = "NONE" },
    DashboardCenter = { fg = default_colors.crystalBlue, bg = "NONE" },
    LightspeedLabel = { fg = default_colors.crystalBlue, bg = "NONE" },
}

require'kanagawa'.setup({ overrides = overrides })

vim.cmd("set background=dark")
vim.cmd("colorscheme kanagawa")

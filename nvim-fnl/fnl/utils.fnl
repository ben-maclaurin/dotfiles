(lambda keymap [mode lhs rhs]
   (vim.api.nvim_set_keymap mode lhs rhs {:noremap true :silent true})
)

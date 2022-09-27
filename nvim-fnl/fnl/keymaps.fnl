(lambda keymap [mode lhs rhs]
   (vim.api.nvim_set_keymap mode lhs rhs {:noremap true :silent true})
)

(keymap :i :jk :<ESC>)
(keymap :i :<M-#> :#)

(keymap :n :<C-l> :20zl)
(keymap :n :<C-h> :20zh)

;; Leader
(keymap "" :<Space> :<Nop>)
(set vim.g.mapleader " ")
(set vim.g.localleader " ")

;; Smooth scroll
(keymap "" :j :jzz)
(keymap "" :k :kzz)

;; Page navigation [ Ctrl ]
(keymap :n :<C-j> :<PageDown>zz)
(keymap :n :<C-k> :<PageUp>zz)

;; Neovim [ V ]
(keymap :n :<leader>vv ":e ~/dotfiles/nvim<CR>")
(keymap :n :<leader>vs ":PackerSync<CR>")
(keymap :n :<leader>vi ":PackerInstall<CR>")



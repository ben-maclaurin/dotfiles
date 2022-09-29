(λ keymap [mode lhs rhs]
   (vim.api.nvim_set_keymap mode lhs rhs {:noremap true :silent true})
)

;; Remap j and k keys to escape insert mode.
(keymap :i :jk :<ESC>)

;; Neovim support for hashtags.
(keymap :i :<M-#> :#)

;; Horizontal page scrolling. 
(keymap :n :<C-l> :20zl)
(keymap :n :<C-h> :20zh)

;;
;;; Leader key

(keymap "" :<Space> :<Nop>)
(set vim.g.mapleader " ")
(set vim.g.localleader " ")

;;
;;; Page Down/Up

;; Use of zz to ensure smooth movement.
(keymap :n :<C-j> :<PageDown>zz)
(keymap :n :<C-k> :<PageUp>zz)

;;
;;; Neovim

(keymap :n :<leader>vv ":e ~/dotfiles/nvim<CR>")
(keymap :n :<leader>vs ":PackerSync<CR>")
(keymap :n :<leader>vi ":PackerInstall<CR>")

;; Quickly select entire line in visual mode.

(keymap :n :<leader>vv :<S-v>)

;;
;;; Dotfile management

(keymap :n :<leader>da ":e ~/dotfiles/alacritty/alacritty.yml<CR>")

;;
;;; Prettier

(keymap :n :<leader>p ":Prettier<CR>")

;;
;;; Window management

;; Focus window to immediate right
(keymap :n :<leader>wl :<C-w>l)

;; Focus window to immediate left
(keymap :n :<leader>wh :<C-w>h)

;; Focus window immediately below
(keymap :n :<leader>wj :<C-w>j)

;; Focus window immediately above 
(keymap :n :<leader>wk :<C-w>k)

;; Create a vertical split (50/50)
(keymap :n :<leader>wv ":vs<CR>")

;; Close a window
(keymap :n :<leader>wq ":exit<CR>")

;;
;;; Quit Neovim

(keymap :n :<leader>q ":qa!<CR>")

;;
;;; Clipboard
(vim.cmd "vnoremap <silent> <leader>y \"+y\"")

;;
;;; Sneak
(keymap "" :f :<Plug>Sneak_s)
(keymap "" :F :<Plug>Sneak_S)
